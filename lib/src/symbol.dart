import 'package:analyzer/dart/element/element.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:package_config/package_config.dart';
import 'package:path/path.dart' as p;

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

/// Returns a scip package for a provided [Element]. 
/// 
/// package        ::= <manager> ' ' <package-name> ' ' <version>
/// <scheme>       ::= any UTF-8, escape spaces with double space.
/// <manager>      ::= same as above, use the placeholder '.' to indicate an empty value
/// <package-name> ::= same as above
/// <version>      ::= same as above
String _getPackage(Element ele, SymbolContext ctx) {
  final prefix = 'pub';

  if (ele.library?.isInSdk == true) {
    final subPackage = ele.library!.isDartCore ? 'core' : 'async';
    return '$prefix dart:$subPackage ${ele.library!.languageVersion.package}';
  }

  if (ele.source == null) {
    throw Exception('Not really sure what to do here');
  };

  if (ele.source!.fullName.startsWith(ctx.projectRoot)) {
    return '$prefix ${ctx.pubspec.name} ${ctx.pubspec.version}';
  } else {
    final package = ctx.packageConfig.packageOf(Uri.file(ele.source!.fullName));
    if (package == null) {
      // this should only happen if the source references a package that is not defined
      // in the pubspec (as a main or transitive dep)
      throw Exception('Unable to find package within packageConfig');
    }
    final rootPath = p.basename(package.root.toString());
    final packageVersion = rootPath.substring(rootPath.lastIndexOf('-')+1);

    return '$prefix ${package.name} $packageVersion';
  }
}

String? _getDescriptor(Element ele, SymbolContext ctx) {
  if (ele.source == null) {
    print('WARN: Element has null source: ${ele.runtimeType} (${ele}) ${ele.location?.components}');
    return null;
  }
  final sourcePath = ele.source!.fullName;
  

  String filePath;
  if (sourcePath.startsWith(ctx.projectRoot)) {
    filePath = sourcePath.substring('${ctx.projectRoot}/'.length);
  } else if (ele.library?.isDartCore == true) {
    // TODO: there has to be a better way to get the path to a dart:core file
    filePath = sourcePath.substring(sourcePath.indexOf('lib/core/'));
  } else {
    final config = ctx.packageConfig.packageOf(Uri.file(sourcePath));
    filePath = sourcePath.substring(config!.root.toFilePath().length);
  }

  final namespace = _escapeNamespacePath(filePath);

  if (ele is ClassElement || ele is EnumElement || ele is ExtensionElement) {
    return '$namespace/${ele.name}#';
  }

  if (ele is TypeParameterElement) {
    final encEle = ele.enclosingElement;
    if (encEle != null) {
      return '${_getDescriptor(encEle, ctx)}[${ele.name}]';
    }
    return '$namespace/[${ele.name}]';
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

  if (ele is ParameterElement && ele.isNamed) {
    if (ele.enclosingElement == null) {
      print('WARN: Parameter element has null enclosingElement ${ele}');
      return null;
    }

    final parentSymbol = _getDescriptor(ele.enclosingElement!, ctx);
    return '$parentSymbol(${ele.name})';
  }
  
  if (ele is PropertyAccessorElement) {
    final parentName = ele.enclosingElement.name;
    return [
      '$namespace/',
      if (parentName != null) '$parentName#',
      '${ele.name}.'
    ].join('');
  }

  if (ele is TopLevelVariableElement) {
    return '$namespace/${ele.name}.';
  }

  print('WARN: Received unknown type ${ele.runtimeType}');
  return null;
}

String _escapeNamespacePath(String path) {
  return path
    .split('/')
    .map((segment) => segment.contains('.') ? '`$segment`' : segment)
    .join('/');
}