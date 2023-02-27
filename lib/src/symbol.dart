import 'package:analyzer/dart/element/element.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:package_config/package_config.dart';
import 'package:path/path.dart' as p;
import 'package:scip_dart/src/utils.dart';

class SymbolContext {
  PackageConfig packageConfig;
  String projectRoot;
  Pubspec pubspec;

  SymbolContext(
    this.packageConfig,
    this.projectRoot,
    this.pubspec,
  );
}

int _localElementIndex = 0;
Map<Element, String> _localElementCache = {};
String _getLocalSymbol(Element ele) {
  _localElementCache.putIfAbsent(ele, () => 'local ${_localElementIndex++}');
  return _localElementCache[ele]!;
}

/// For a given `Element` returns the scip symbol form.
/// 
/// Returns [null] if symbol cannot be created for provided element
String? getSymbol(
  Element ele,
  SymbolContext ctx,
) {
  if (ele is LocalVariableElement) {
    return _getLocalSymbol(ele);
  }

  // named parameters can be "goto'd" on the consuming symbol, and are not "local"
  if (ele is ParameterElement && !ele.isNamed) {
    return _getLocalSymbol(ele);
  }

  // for some reason, LibraryImportElement is considered to be "private"
  if (ele.isPrivate && ele is! LibraryImportElement) {
    return _getLocalSymbol(ele);
  }

  final descriptor = _getDescriptor(ele, ctx);
  if (descriptor == null) return null;

  // Symbol Form: '<scheme> ' ' <package> ' ' (<descriptor>)+ | 'local ' <local-id>'
  return [
    'scip-dart',
    _getPackage(ele, ctx),
    _getDescriptor(ele, ctx),
  ].join(' ');
}

String getFileSymbol(String path, SymbolContext ctx) {
  return [
    'scip-dart',
    'pub ${ctx.pubspec.name} ${ctx.pubspec.version}',
    '${_escapeNamespacePath(path)}/',
  ].join(' ');
}

/// Returns a scip package symbol for a provided [Element]. 
/// 
/// <package>      ::= <manager> ' ' <package-name> ' ' <version>
/// <scheme>       ::= any UTF-8, escape spaces with double space.
/// <manager>      ::= same as above, use the placeholder '.' to indicate an empty value
/// <package-name> ::= same as above
/// <version>      ::= same as above
String _getPackage(Element ele, SymbolContext ctx) {
  String packageName;
  String packageVersion;

  if (ele.source == null) {
    throw Exception('Not really sure what to do here');
  }

  if (ele.library?.isInSdk == true) {
    final match = RegExp('dart-sdk/lib/(.+?)/').firstMatch(ele.source!.fullName);
    if (match == null) {
      throw Exception('Dart sdk path was not incorrect format: ${ele.source!.fullName}');
    }

    packageName = 'dart:${match[1]}';
    packageVersion = ele.library!.languageVersion.package.toString();
  } else if (ele.source!.fullName.startsWith(ctx.projectRoot)) {
    packageName = ctx.pubspec.name;
    packageVersion = ctx.pubspec.version.toString();
  } else {
    final package = ctx.packageConfig.packageOf(Uri.file(ele.source!.fullName));
    if (package == null) {
      // this should only happen if the source references a package that is not defined
      // in the pubspec (as a main or transitive dep)
      throw Exception('Unable to find package within packageConfig');
    }
    final rootPath = p.basename(package.root.toString());
    packageVersion = rootPath.substring(rootPath.lastIndexOf('-')+1);
    packageName = package.name;
  }

  return 'pub $packageName $packageVersion';
}


/// Returns a scip symbol descriptor for a provided [Element].
///
///```
/// <descriptor>           ::= <namespace> | <type> | <term> | <method> | <type-parameter> | <parameter> | <meta>
/// <namespace>            ::= <name> '/'
/// <type>                 ::= <name> '#'
/// <term>                 ::= <name> '.'
/// <meta>                 ::= <name> ':'
/// <method>               ::= <name> '(' <method-disambiguator> ').'
/// <type-parameter>       ::= '[' <name> ']'
/// <parameter>            ::= '(' <name> ')'
/// <name>                 ::= <identifier>
/// <method-disambiguator> ::= <simple-identifier>
/// <identifier>           ::= <simple-identifier> | <escaped-identifier>
/// <simple-identifier>    ::= (<identifier-character>)+
/// <identifier-character> ::= '_' | '+' | '-' | '$' | ASCII letter or digit
/// <escaped-identifier>   ::= '`' (<escaped-character>)+ '`'
/// <escaped-characters>   ::= any UTF-8 character, escape backticks with double backtick.
/// ```
String? _getDescriptor(Element ele, SymbolContext ctx) {
  if (ele.source == null) {
    print('WARN: Element has null source: ${ele.runtimeType} (${ele}) ${ele.location?.components}');
    return null;
  }
  final sourcePath = ele.source!.fullName;
  
  String filePath;
  if (sourcePath.startsWith(ctx.projectRoot)) {
    filePath = sourcePath.substring('${ctx.projectRoot}/'.length);
  } else if (ele.library?.isInSdk == true) {
    // TODO: there has to be a better way to get the path to a 'dart:*' file
    filePath = sourcePath.substring(sourcePath.indexOf('dart-sdk/lib/') + 'dart-sdk/'.length);
  } else {
    final config = ctx.packageConfig.packageOf(Uri.file(sourcePath));
    if (config == null) {
      throw Exception('Could not find package for $sourcePath. Have you run pub get?');
    }

    filePath = sourcePath.substring(config.root.toFilePath().length);
  }

  final namespace = _escapeNamespacePath(filePath);

  if (
    ele is InterfaceElement || // class, mixin, enum
    ele is TypeAliasElement || 
    ele is ExtensionElement
  ) {
    return '$namespace/${ele.name}#';
  }

  if (ele is ConstructorElement) {
    final className = ele.enclosingElement.name;
    final constructorName = ele.name.isNotEmpty ? ele.name : '`<constructor>`';
    return '$namespace/$className#$constructorName().';
  }
  
  if (ele is MethodElement) {
    final className = ele.enclosingElement.name;
    return '$namespace/$className#${ele.name}().';
  }
  
  if (ele is FunctionElement) {
    return '$namespace/${ele.name}().';
  }

  if (ele is TopLevelVariableElement || ele is PrefixElement) {
    return '$namespace/${ele.name}.';
  }

  if (ele is TypeParameterElement) {
    final encEle = ele.enclosingElement;
    if (encEle == null) return '$namespace/[${ele.name}]';
    return '${_getDescriptor(encEle, ctx)}[${ele.name}]';
  }

  // only generate symbols for named parameters, all others are 'local x'
  if (ele is ParameterElement && ele.isNamed) {
    final encEle = ele.enclosingElement;
    if (encEle == null) {
      display('Parameter element has null enclosingElement "$ele"');
      return null;
    }

    // If encEle is a GenericFunctionTypeElement, the function is a 
    // `void Function({String param})` type. For this case, [param]
    // is not indexable, so do not generate a symbol for it
    if (encEle is GenericFunctionTypeElement) return null;

    return '${_getDescriptor(encEle, ctx)}(${ele.name})';
  }
  
  if (ele is PropertyAccessorElement) {
    final parentName = ele.enclosingElement.name;
    return [
      '$namespace/',
      if (parentName != null) '$parentName#',
      '${ele.name}.'
    ].join();
  }

  if (ele is FieldElement) {
    final encEle = ele.enclosingElement;
    return '${_getDescriptor(encEle, ctx)}${ele.name}.';
  }

  print('WARN: Received unknown type ${ele.runtimeType} (${ele.library!.source.fullName})');
  display(
    'Received unknown\n'
    '\ttype: ${ele.runtimeType}\n'
    '\tname: ${ele.name}\n'
    '\tpath: (${ele.library!.source.fullName})',
  );
  return null;
}

String _escapeNamespacePath(String path) {
  return path
    .split('/')
    .map((segment) => segment.contains('.') ? '`$segment`' : segment)
    .join('/');
}