import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/error/error.dart';
import 'package:analyzer/source/line_info.dart';
import 'package:package_config/package_config.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:scip_dart/src/metadata.dart';
import 'package:scip_dart/src/gen/scip.pb.dart';
import 'package:scip_dart/src/relationship_generator.dart';
import 'package:scip_dart/src/symbol_generator.dart';
import 'package:scip_dart/src/utils.dart';

List<SymbolInformation> globalExternalSymbols = [];

class ScipVisitor extends GeneralizingAstVisitor {
  final String _relativePath;
  final String _projectRoot;
  final LineInfo _lineInfo;
  final List<AnalysisError> _analysisErrors;

  final SymbolGenerator _symbolGenerator;

  final List<Occurrence> occurrences = [];
  final List<SymbolInformation> symbols = [];

  ScipVisitor(
    this._relativePath,
    this._projectRoot,
    this._lineInfo,
    this._analysisErrors,
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

    final relationships = relationshipsFor(node, element, _symbolGenerator);

    _registerAsDefinition(
      element,
      node,
      relationships: relationships,
    );
  }

  void _visitNormalFormalParameter(NormalFormalParameter node) {
    final element = node.declaredElement;
    if (element == null) return;

    // if this parameter is a child of a GenericFunctionType (can be a
    // typedef, or a function as a parameter), we don't want to index it
    // as a definition (nothing is defined, just referenced). Return false
    // and let the [_visitSimpleIdentifier] declare the reference
    final parentParameter =
        node.parent?.thisOrAncestorOfType<GenericFunctionType>();
    if (parentParameter != null) return;

    if (node is FieldFormalParameter) {
      final fieldElement = (element as FieldFormalParameterElement).field;
      _registerAsReference(
        fieldElement!,
        node,
        offset: node.name.offset,
        length: node.name.length,
      );
      return;
    }

    _registerAsDefinition(element, node);
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
      _registerAsDefinition(element, node);
    } else {
      _registerAsReference(
        element,
        node,
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
    Element element,
    AstNode node, {
    required int offset,
    required int length,
  }) {
    final symbol = _symbolGenerator.symbolFor(element);
    if (symbol != null) {
      final meta = getSymbolMetadata(element, offset, _analysisErrors);
      occurrences.add(Occurrence(
        range: _lineInfo.getRange(offset, length),
        symbol: symbol,
        diagnostics: meta.diagnostics,
      ));

      if (!element.source!.fullName.startsWith(_projectRoot)) {
        if (!globalExternalSymbols.any(
          (symbolInfo) => symbolInfo.symbol == symbol,
        )) {
          final meta = getSymbolMetadata(element, offset, _analysisErrors);
          globalExternalSymbols.add(SymbolInformation(
            symbol: symbol,
            documentation: meta.documentation,
            signatureDocumentation: meta.signatureDocumentation,
          ));
        }
      }
    }
  }

  /// Registers a provided [element] as a definition
  ///
  /// This adds both a symbol, and an occurrence for the element and it's
  /// name
  void _registerAsDefinition(
    Element element,
    AstNode node, {
    List<Relationship>? relationships,
  }) {
    final symbol = _symbolGenerator.symbolFor(element);
    if (symbol != null) {
      final meta =
          getSymbolMetadata(element, element.nameOffset, _analysisErrors);
      symbols.add(SymbolInformation(
        symbol: symbol,
        documentation: meta.documentation,
        relationships: relationships,
        signatureDocumentation: meta.signatureDocumentation,
      ));

      occurrences.add(Occurrence(
        range: _lineInfo.getRange(element.nameOffset, element.nameLength),
        symbol: symbol,
        symbolRoles: SymbolRole.Definition.value,
        diagnostics: meta.diagnostics,
      ));
    }
  }
}
