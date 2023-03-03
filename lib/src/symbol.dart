import 'package:analyzer/dart/element/element.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:package_config/package_config.dart';
import 'package:path/path.dart' as p;
import 'package:scip_dart/src/utils.dart';

/// Generates symbols for a specific file.
///
/// Each sourcefile should use its own instance of `SymbolGenerator`
class SymbolGenerator {
  final PackageConfig _packageConfig;
  final String _projectRoot;
  final Pubspec _pubspec;

  int _localElementIndex = 0;

  /// A mapping between resolved local [Element]s and the [symbol]
  /// that should be used for the element. If no element is found,
  /// [_localElementIndex] should be used to generate one.
  ///
  /// Use []
  Map<Element, String> _localElementRegistry = {};

  SymbolGenerator(
    this._packageConfig,
    this._projectRoot,
    this._pubspec,
  );

  /// For a given `Element` returns the scip symbol form.
  ///
  /// Returns [null] if symbol cannot be created for provided element
  String? symbolFor(Element element) {
    if (_isLocalElement(element)) return _localSymbolFor(element);

    final descriptor = _getDescriptor(element);
    if (descriptor == null) return null;

    // Symbol Form: '<scheme> ' ' <package> ' ' (<descriptor>)+ | 'local ' <local-id>'
    return [
      'scip-dart',
      _getPackage(element),
      descriptor,
    ].join(' ');
  }

  String fileSymbolFor(String path) {
    return [
      'scip-dart',
      'pub ${_pubspec.name} ${_pubspec.version}',
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
  String _getPackage(Element element) {
    if (element.source == null) {
      throw Exception('Not really sure what to do here');
    }

    String packageVersion;
    String packageName;
    if (element.library?.isInSdk == true) {
      final path = element.source!.fullName;

      final searchPrefix = 'dart-sdk/lib/';
      if (!path.contains(searchPrefix)) {
        throw Exception('Dart sdk path was not incorrect format: ${path}');
      }
      final partialPath = path.substring(
        path.indexOf(searchPrefix) + searchPrefix.length,
      );
      final dependencyName = partialPath.substring(0, partialPath.indexOf('/'));

      packageName = 'dart:$dependencyName';
      packageVersion = element.library!.languageVersion.package.toString();
    } else if (element.source!.fullName.startsWith(_projectRoot)) {
      packageName = _pubspec.name;
      packageVersion = _pubspec.version.toString();
    } else {
      final package = _packageConfig.packageOf(Uri.file(element.source!.fullName));
      if (package == null) {
        // this should only happen if the source references a package that is not defined
        // in the pubspec (as a main or transitive dep)
        throw Exception('Unable to find package within packageConfig');
      }

      packageName = package.name;

      final rootPath = p.basename(package.root.toString());
      packageVersion = rootPath.substring(rootPath.lastIndexOf('-') + 1);
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
  String? _getDescriptor(Element element) {
    if (element.source == null) {
      print(
          'WARN: Element has null source: ${element.runtimeType} (${element}) ${element.location?.components}');
      return null;
    }
    final sourcePath = element.source!.fullName;
    final namespace = _escapeNamespacePath(_relativeToPackageRoot(sourcePath));

    if (element is LibraryElement) {
      return '$namespace/';
    }

    if (element is TypeDefiningElement || // class, mixin, enum, type-alias
        element is ExtensionElement) {
      return '$namespace/${element.name}#';
    }

    if (element is ConstructorElement) {
      final className = element.enclosingElement.name;
      final constructorName =
          element.name.isNotEmpty ? element.name : '`<constructor>`';
      return '$namespace/$className#$constructorName().';
    }

    if (element is MethodElement) {
      final className = element.enclosingElement.name;
      return '$namespace/$className#${element.name}().';
    }

    if (element is FunctionElement) {
      return '$namespace/${element.name}().';
    }

    if (element is TopLevelVariableElement || element is PrefixElement) {
      return '$namespace/${element.name}.';
    }

    if (element is TypeParameterElement) {
      final encEle = element.enclosingElement;
      if (encEle == null) return '$namespace/[${element.name}]';
      return '${_getDescriptor(encEle)}[${element.name}]';
    }

    // only generate symbols for named parameters, all others are 'local x'
    if (element is ParameterElement && element.isNamed) {
      final encEle = element.enclosingElement;
      if (encEle == null) {
        display('Parameter element has null enclosingElement "$element"');
        return null;
      }

      // If element is a GenericFunctionTypeElement, the function is a
      // `void Function({String param})` type. For this case, [param]
      // is not indexable, so do not generate a symbol for it
      if (element is GenericFunctionTypeElement) return null;

      return '${_getDescriptor(encEle)}(${element.name})';
    }

    if (element is PropertyAccessorElement) {
      final parentName = element.enclosingElement.name;
      return [
        '$namespace/',
        if (parentName != null) '$parentName#',
        '${element.name}.'
      ].join();
    }

    if (element is FieldElement) {
      final encEle = element.enclosingElement;
      return '${_getDescriptor(encEle)}${element.name}.';
    }

    display('\n'
        'Received unknown type (${element.runtimeType})\n'
        '\tname: ${element.name}\n'
        '\tpath: (${element.library!.source.fullName})'
        '\n');
    return null;
  }

  String _localSymbolFor(Element element) {
    _localElementRegistry.putIfAbsent(
      element, 
      () => 'local ${_localElementIndex++}',
    );
    return _localElementRegistry[element]!;
  }

  bool _isLocalElement(Element element) {
    if (element is LocalVariableElement) true;

    // named parameters can be "goto'd" on the consuming symbol, and are not "local"
    if (element is ParameterElement && !element.isNamed) return true;

    // for some reason, LibraryImportElement is considered to be "private"
    if (element.isPrivate && element is! LibraryImportElement) return true;

    return false;
  }

  String _escapeNamespacePath(String path) {
    return path
        .split('/')
        .map((segment) => segment.contains('.') ? '`$segment`' : segment)
        .join('/');
  }

  /// Returns [sourcePath] as a relative path to the root of the package
  /// which it exists within.
  /// 
  /// If no package for the provided path exists in the package config. An
  /// exception will be thrown. This is most likely due to not running pub-get
  /// before scip indexing.
  String _relativeToPackageRoot(String sourcePath) {
    if (sourcePath.startsWith(_projectRoot)) {
      return sourcePath.substring('${_projectRoot}/'.length);
    } else if (sourcePath.contains('dart-sdk/lib')) {
      // TODO: there has to be a better way to get the path to a 'dart:*' file
      return sourcePath.substring(
        sourcePath.indexOf('dart-sdk/lib/') + 'dart-sdk/'.length,
      );
    } else {
      final config = _packageConfig.packageOf(Uri.file(sourcePath));
      if (config == null) {
        throw Exception(
            'Could not find package for $sourcePath. Have you run pub get?');
      }

      return sourcePath.substring(config.root.toFilePath().length);
    }
  }
}
