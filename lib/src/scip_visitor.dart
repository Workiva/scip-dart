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
    final element = _symbolGenerator.elementFor(node);
    if (element == null) return;

    final relationships = relationshipsFor(node, element, _symbolGenerator);

    _registerAsDefinition(
      element,
      node,
      relationships: relationships,
    );
  }

  void _visitNormalFormalParameter(NormalFormalParameter node) {
    final element = _symbolGenerator.elementFor(node);
    if (element == null) return;

    // if the parameter is a `this.someFieldOnThClass`, we need to register
    // it as a reference to said field, as well as a declaration of a parameter.
    if (node is FieldFormalParameter) {
      final fieldElement = (element as FieldFormalParameterElement).field;
      _registerAsReference(
        fieldElement!,
        node,
        offset: node.name.offset,
        length: node.name.length,
      );

      // non-named parameters are considered 'local' symbols, and when combined
      // with field formal parameters (this.foo), do not contain a declaration.
      // if its not named, do not register it as a definition as well.
      if (!node.isNamed) return;
    }

    _registerAsDefinition(element, node);
  }

  void _visitSimpleIdentifier(SimpleIdentifier node) {
    final element = _symbolGenerator.elementFor(node);
    if (element == null) return;

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
    if (symbol == null) return null;

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
