import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:package_config/package_config.dart';
import 'package:scip_dart/src/package_version_cache.dart';
import 'package:scip_dart/src/utils.dart';

/// Generates symbols for a specific file.
///
/// Each sourcefile should use its own instance of `SymbolGenerator`
class SymbolGenerator {
  final PackageConfig _packageConfig;
  final Pubspec _pubspec;

  int _localElementIndex = 0;

  /// A mapping between resolved local [Element]s and the [symbol]
  /// that should be used for the element. If no element is found,
  /// [_localElementIndex] should be used to generate one.
  ///
  /// Use []
  Map<Element, String> _localElementRegistry = {};

  SymbolGenerator(this._packageConfig, this._pubspec);

  /// For a given `Element` returns the scip symbol form.
  ///
  /// Returns [null] if symbol cannot be created for provided element
  String? symbolFor(Element element) {
    if (element is LocalVariableElement) {
      return _localSymbolFor(element);
    }

    // named parameters can be "goto'd" on the consuming symbol, and are not "local"
    if (element is ParameterElement && !element.isNamed) {
      return _localSymbolFor(element);
    }

    // for some reason, LibraryImportElement is considered to be "private"
    if (element.isPrivate && element is! LibraryImportElement) {
      return _localSymbolFor(element);
    }

    final descriptor = _getDescriptor(element);
    if (descriptor == null) return null;

    // Symbol Form: '<scheme> ' ' <package> ' ' (<descriptor>)+ | 'local ' <local-id>'
    return [
      'scip-dart',
      _getPackage(element),
      _getDescriptor(element),
    ].join(' ');
  }

  String symbolForFile(String path) {
    return [
      'scip-dart',
      'pub ${_pubspec.name} ${_pubspec.version}',
      '${_escapeNamespacePath(path)}/',
    ].join(' ');
  }

  String? symbolForDirective(Directive node, Element element) {
    Uri uri;
    if (element is LibraryImportElement) {
      uri = (element.uri as DirectiveUriWithSource).source.uri;
    } else if (element is LibraryExportElement) {
      uri = (element.uri as DirectiveUriWithSource).source.uri;
    } else if (element is PartElement) {
      uri = (element.uri as DirectiveUriWithSource).source.uri;
    } else if (node is PartOfDirective && element is LibraryElement) {
      uri = element.source.uri;
    } else {
      return null;
    }

    if (uri.toString().startsWith('dart')) {
      final packageVersion =
          element.library!.languageVersion.package.toString();
      return [
        'scip-dart',
        'pub $uri $packageVersion',
        _getPackage(element),
        _escapeNamespacePath(_pathForSdkElement(element)) + '/'
      ].join(' ');
    }

    if (uri.toString().startsWith('package')) {
      final resolvedUri = _packageConfig.resolve(uri);
      if (resolvedUri == null) return null;
      uri = resolvedUri;
    }

    final config = _packageConfig.packageOf(uri);
    if (config == null) return null;

    final relativePath = _escapeNamespacePath(
      uri.toFilePath().substring(config.root.toFilePath().length),
    );

    final packageName = config.name;
    final version = PackageVersionCache.versionFor(config.root.toFilePath());

    return [
      'scip-dart',
      'pub $packageName $version',
      '$relativePath/',
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

    // sdk packages are not defined within the [_packageConfig], version
    // and name must be handled custom
    if (_isInSdk(element)) {
      final packageName = _pathForSdkElement(element).split('/').first;
      final packageVersion =
          element.library!.languageVersion.package.toString();
      return 'pub $packageName $packageVersion';
    }

    final package =
        _packageConfig.packageOf(Uri.file(element.source!.fullName));
    if (package == null) {
      // this should only happen if the source references a package that is not defined
      // in the pubspec (as a main or transitive dep)
      throw Exception('Unable to find package within packageConfig');
    }

    final packageVersion =
        PackageVersionCache.versionFor(package.root.toFilePath());
    return 'pub ${package.name} $packageVersion';
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
      display(
        'WARN: Element has null source: '
        '${element.runtimeType} (${element}) '
        '${element.location?.components}',
      );
      return null;
    }
    final sourcePath = element.source!.fullName;

    String filePath;
    if (_isInSdk(element)) {
      filePath = _pathForSdkElement(element);
    } else {
      final config = _packageConfig.packageOf(Uri.file(sourcePath));
      if (config == null) {
        throw Exception(
            'Could not find package for $sourcePath. Have you run pub get?');
      }

      filePath = sourcePath.substring(config.root.toFilePath().length);
    }

    final namespace = _escapeNamespacePath(filePath);

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

    display(
      '\n'
      'Received unknown type (${element.runtimeType})\n'
      '\tname: ${element.name}\n'
      '\tpath: (${element.library!.source.fullName})'
      '\n',
    );
    return null;
  }

  String _localSymbolFor(Element ele) {
    _localElementRegistry.putIfAbsent(
      ele,
      () => 'local ${_localElementIndex++}',
    );
    return _localElementRegistry[ele]!;
  }

  String _escapeNamespacePath(String path) {
    return path
        .split('/')
        .map((segment) => segment.contains('.') ? '`$segment`' : segment)
        .join('/');
  }

  bool _isInSdk(Element element) {
    return element.library?.isInSdk == true;
  }

  String _pathForSdkElement(Element element) {
    if (element.enclosingElement?.source?.uri != null) {
      return element.enclosingElement!.source!.uri.toString();
    } else {
      throw Exception(
          'Unable to find path to dart sdk element: ${element.source!.fullName}');
    }
  }
}
