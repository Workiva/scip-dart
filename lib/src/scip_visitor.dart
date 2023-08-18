import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/source/line_info.dart';
import 'package:package_config/package_config.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:scip_dart/src/flags.dart';
import 'package:scip_dart/src/metadata.dart';
import 'package:scip_dart/src/gen/scip.pb.dart';
import 'package:scip_dart/src/relationship_generator.dart';
import 'package:scip_dart/src/symbol_generator.dart';
import 'package:scip_dart/src/utils.dart';
import 'package:path/path.dart' as p;

List<SymbolInformation> globalExternalSymbols = [];

class ScipVisitor extends GeneralizingAstVisitor {
  final String _relativePath;
  final String _projectRoot;
  final LineInfo _lineInfo;

  final SymbolGenerator _symbolGenerator;

  final List<Occurrence> occurrences = [];
  final List<SymbolInformation> symbols = [];

  ScipVisitor(
    this._relativePath,
    this._projectRoot,
    this._lineInfo,
    PackageConfig packageConfig,
    Pubspec pubspec,
  ) : _symbolGenerator = SymbolGenerator(
          packageConfig,
          pubspec,
        ) {
    final fileSymbol = _symbolGenerator.fileSymbolFor(_relativePath);
    occurrences.add(Occurrence(
      symbol: fileSymbol,
      range: [0, 0, 0],
      syntaxKind: SyntaxKind.IdentifierModule,
      symbolRoles: SymbolRole.Definition.value,
    ));
    symbols.add(SymbolInformation(symbol: fileSymbol));
  }

  @override
  void visitNode(AstNode node) {
    // [visitDeclaration] on the [GeneralizingAstVisitor] does not match parameters
    // even though the parameter node extends [Declaration]. This is a workaround
    // to correctly parse all [Declaration] ast nodes.
    if (node is Declaration) {
      _visitDeclaration(node);
    } else if (node is NormalFormalParameter) {
      _visitNormalFormalParameter(node);
    } else if (node is SimpleIdentifier) {
      _visitSimpleIdentifier(node);
    }

    super.visitNode(node);
  }

  void _visitDeclaration(Declaration node) {
    if (node.declaredElement == null) return;

    final element = node.declaredElement!;

    List<Relationship>? relationships;
    if (Flags.instance.indexRelationships) {
      relationships = relationshipsFor(node, element, _symbolGenerator);
    }

    _registerAsDefinition(
      element,
      relationships: relationships,
    );
  }

  void _visitNormalFormalParameter(NormalFormalParameter node) {
    final element = node.declaredElement;
    if (element == null) return;

    if (node is FieldFormalParameter) {
      final fieldElement = (element as FieldFormalParameterElement).field;
      _registerAsReference(
        fieldElement!,
        offset: node.thisKeyword.offset,
        length: node.thisKeyword.length,
      );
    }

    _registerAsDefinition(element);
  }

  void _visitSimpleIdentifier(SimpleIdentifier node) {
    var element = node.staticElement;

    // Both `.loadLibrary()`, and `.call()` are synthetic functions that
    // have no definition. These should therefore should not be indexed.
    if (element is FunctionElement && element.isSynthetic) {
      if ([
        FunctionElement.LOAD_LIBRARY_NAME,
        FunctionElement.CALL_METHOD_NAME,
      ].contains(element.name)) return;
    }

    // [element] for assignment fields is null. If the parent node
    // is a `CompoundAssignmentExpression`, we know this node is referring
    // to an assignment line. In that case, use the read/write element attached
    // to this node instead of the [node]'s element
    if (element == null) {
      final assignmentExpr =
          node.thisOrAncestorOfType<CompoundAssignmentExpression>();
      if (assignmentExpr == null) return;

      element = assignmentExpr.readElement ?? assignmentExpr.writeElement;
    }

    // When the identifier is a field, the analyzer creates synthetic getters/
    // setters for it. We need to get the backing field.
    if (element?.isSynthetic == true && element is PropertyAccessorElement) {
      element = element.variable;
    }

    // element is null if there's nothing really to do for this node. Example: `void`
    // TODO: One weird issue found: named parameters of external symbols were element.source
    //       EX: `color(path, front: Styles.YELLOW);` where `color` comes from the chalk-dart package
    if (element == null || element.source == null) return;

    if (node.inDeclarationContext()) {
      _registerAsDefinition(element);
    } else {
      _registerAsReference(
        element,
        offset: node.offset,
        length: node.name.length,
      );
    }
  }

  /// Registers the provided [element] as a reference to an existing definition
  ///
  /// [node] refers to the ast node where the reference exists, [element]
  /// is the resolved element of the downstream element.
  ///
  /// If [element] exists outside of the projects source, it will be added to the
  /// [globalExternalSymbols].
  void _registerAsReference(
    Element element, {
    required int offset,
    required int length,
  }) {
    final symbol = _symbolGenerator.symbolFor(element);
    if (symbol != null) {
      occurrences.add(Occurrence(
        range: _lineInfo.getRange(offset, length),
        symbol: symbol,
      ));

      if (_shouldRegisterAsExternalSymbol(element, symbol)) {
        final meta = getSymbolMetadata(element);
        globalExternalSymbols.add(SymbolInformation(
          symbol: symbol,
          documentation: meta.documentation,
        ));
      }
    }
  }

  /// Registers a provided [element] as a definition
  ///
  /// This adds both a symbol, and an occurrence for the element and it's
  /// name
  void _registerAsDefinition(
    Element element, {
    List<Relationship>? relationships,
  }) {
    final symbol = _symbolGenerator.symbolFor(element);
    if (symbol != null) {
      final meta = getSymbolMetadata(element);
      symbols.add(SymbolInformation(
        symbol: symbol,
        documentation: meta.documentation,
        relationships: relationships,
      ));

      occurrences.add(Occurrence(
        range: _lineInfo.getRange(element.nameOffset, element.nameLength),
        symbol: symbol,
        symbolRoles: SymbolRole.Definition.value,
      ));
    }
  }

  /// Whether or not the provided [element] and it's correlating [symbol]
  /// should be considered an "external" symbol.
  bool _shouldRegisterAsExternalSymbol(Element element, String symbol) {
    // local symbols cannot be considered "external", since they are local.
    final isLocalSymbol = symbol.startsWith('local');
    if (isLocalSymbol) return false;

    // anything within .dart_tool is rarely committed, but can be referenced
    // within the codebase. Consider these "external" entities.
    //
    // if the element is within the project, it also, cannot be external
    // and should have a correlating definition
    final source = element.source!.fullName;
    final isInDartTool = source.startsWith(p.join(_projectRoot, '.dart_tool'));
    final isInProject = source.startsWith(_projectRoot);
    if (!isInDartTool || isInProject) return false;

    // check if the symbol already has been added to the global symbols
    if (globalExternalSymbols.any((s) => s.symbol == symbol)) return false;

    return true;
  }
}
