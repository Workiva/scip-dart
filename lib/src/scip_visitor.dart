import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/source/line_info.dart';
import 'package:package_config/package_config.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:scip_dart/src/metadata.dart';
import 'package:scip_dart/src/gen/scip.pb.dart';
import 'package:scip_dart/src/symbol.dart';
import 'package:scip_dart/src/utils.dart';

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
          _projectRoot,
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
    // print(':: $node ${node.runtimeType}');
    if (node is Comment) {
      // For now, don't parse anything within comments (this was broken for
      // local references). Later update to support this
      return;
    }

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
    _registerAsDefinition(element);
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
    final element = node.staticElement;
    // print(':: $node ${node.runtimeType} ${element.runtimeType}');

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

      if (!element.source!.fullName.startsWith(_projectRoot)) {
        if (!globalExternalSymbols.any(
          (symbolInfo) => symbolInfo.symbol == symbol,
        )) {
          final meta = getSymbolMetadata(element);
          globalExternalSymbols.add(SymbolInformation(
            symbol: symbol,
            documentation: meta.documentation,
          ));
        }
      }
    }
  }

  /// Registers a provided [element] as a definition
  ///
  /// This adds both a symbol, and an occurrence for the element and it's
  /// name
  void _registerAsDefinition(Element element) {
    final symbol = _symbolGenerator.symbolFor(element);
    if (symbol != null) {
      final meta = getSymbolMetadata(element);
      symbols.add(SymbolInformation(
        symbol: symbol,
        documentation: meta.documentation,
      ));

      occurrences.add(Occurrence(
        range: _lineInfo.getRange(element.nameOffset, element.nameLength),
        symbol: symbol,
        symbolRoles: SymbolRole.Definition.value,
      ));
    }
  }
}
