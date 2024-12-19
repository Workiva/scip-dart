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
  /// Use [_localSymbolFor] to generate new local symbols
  Map<Element, String> _localElementRegistry = {};

  SymbolGenerator(this._packageConfig, this._pubspec);

  /// For a given [AstNode], returns the correlating [Element] type
  /// that should be used to generate the symbol
  Element? elementFor(AstNode node) {
    if (node is Declaration) {
      return node.declaredElement;
    } else if (node is NormalFormalParameter) {
      // if this parameter is a child of a GenericFunctionType (can be a
      // typedef, or a function as a parameter), we don't want to index it
      // as a definition (nothing is defined, just referenced). Return false
      // and let the [_visitSimpleIdentifier] declare the reference
      final parentParameter =
          node.parent?.thisOrAncestorOfType<GenericFunctionType>();
      if (parentParameter != null) return null;

      var element = node.declaredElement;
      if (element == null) return null;

      return element;
    } else if (node is SimpleIdentifier) {
      var element = node.staticElement;

      // A SimpleIdentifier with a direct parent of a ConstructorDeclaration
      // is the reference to the class itself. In scip, we want to ignore
      // this as the constructor has its own definition, and only that
      if (node.parent is ConstructorDeclaration) {
        return null;
      }

      // if we're nested under a ConstructorName identifier, use the constructor
      // as the element to annotate instead of the reference to the Class
      final parentConstructor = node.thisOrAncestorOfType<ConstructorName>();
      if (parentConstructor != null) {
        // ConstructorNames can also include a PrefixIdentifier: `math.Rectangle()`
        // both 'math' and 'Rectangle' are simple identifiers. We only want
        // the constructor element fo 'Rectangle' in this case
        final parentPrefixIdentifier = node.thisOrAncestorOfType<PrefixedIdentifier>();
        if (parentPrefixIdentifier != null) {
          if (parentPrefixIdentifier.identifier == node) {
            return parentConstructor.staticElement;
          }
          return element;
        }
        
        // Otherwise, element is just `Rectangle()`, so simply return the
        // constructor's element
        return parentConstructor.staticElement;
      }

      // Both `.loadLibrary()`, and `.call()` are synthetic functions that
      // have no definition. These should therefore should not be indexed.
      if (element is FunctionElement && element.isSynthetic) {
        if ([
          FunctionElement.LOAD_LIBRARY_NAME,
          FunctionElement.CALL_METHOD_NAME,
        ].contains(element.name)) return null;
      }

      // [element] for assignment fields is null. If the parent node
      // is a `CompoundAssignmentExpression`, we know this node is referring
      // to an assignment line. In that case, use the read/write element attached
      // to this node instead of the [node]'s element
      if (element == null) {
        final assignmentExpr =
            node.thisOrAncestorOfType<CompoundAssignmentExpression>();
        if (assignmentExpr == null) return null;

        element = assignmentExpr.readElement ?? assignmentExpr.writeElement;
      }

      // When the identifier is a field, the analyzer creates synthetic getters/
      // setters for it. We need to get the backing field.
      if (element?.isSynthetic == true && element is PropertyAccessorElement) {
        // The values field on enums is synthetic, and has no explicit definition like
        // other fields do. Skip indexing for this case.
        if (element.enclosingElement is EnumElement &&
            element.name == 'values') {
          return null;
        }

        element = element.variable;
      }

      // element is null if there's nothing really to do for this node. Example: `void`
      // TODO: One weird issue found: named parameters of external symbols were element.source
      //       EX: `color(path, front: Styles.YELLOW);` where `color` comes from the chalk-dart package
      if (element?.source == null) return null;

      return element;
    }

    display('WARN: Received unknown ast node type in elementFor: '
        '${node.runtimeType} ($node). Skipping');

    return null;
  }

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

      var prefix = '';
      if (element.isGetter) {
        prefix = '<get>';
      } else if (element.isSetter) {
        prefix = '<set>';
      }

      return [
        '$namespace/',
        if (parentName != null) '$parentName#',
        '`$prefix${element.variable.name}`.',
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
