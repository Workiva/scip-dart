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

class ScipVisitor extends GeneralizingAstVisitor {
  String _relativePath;
  String _projectRoot;
  LineInfo _lineInfo;
  PackageConfig _packageConfig;
  Pubspec _pubspec;

  SymbolContext get _symbolContext => SymbolContext(
    _packageConfig,
    _projectRoot,
    _pubspec,
  );

  List<Occurrence> occurrences = [];
  List<SymbolInformation> symbols = [];
  List<SymbolInformation> externalSymbols = [];

  ScipVisitor(
    this._relativePath,
    this._projectRoot,
    this._lineInfo,
    this._packageConfig,
    this._pubspec,
  ) {
    final fileSymbol = getFileSymbol(_relativePath, _symbolContext);
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
    // print(':: ${node} : ${node.runtimeType}');

    if (node is Declaration) {
      _visitDeclaration(node);
    } else if (node is SimpleFormalParameter) {
      _visitSimpleFormalParameter(node);
    } else if (node is SimpleIdentifier) {
      _visitSimpleIdentifier(node);
    }

    super.visitNode(node);
  }

  void _visitSimpleFormalParameter(SimpleFormalParameter node) {
    if (node.declaredElement == null) {
      print('INFO: Received null [declaredElement]');
      return;
    }
    
    final ele = node.declaredElement!;

    final symbol = getSymbol(ele, _symbolContext);
    if (symbol != null) {
      _registerSymbol(symbol, ele);

      final occMeta = getOccurrenceMetadata(node);
      occurrences.add(Occurrence(
        range: _lineInfo.getRange(ele.nameOffset, ele.nameLength),
        symbol: symbol,
        symbolRoles: SymbolRole.Definition.value,
        syntaxKind: occMeta.syntaxKind,
      ));
    }
  }

  void _visitDeclaration(Declaration node) {
    if (node.declaredElement == null) {
      print('INFO: Received null [declaredElement]');
      return;
    }

    final ele = node.declaredElement!;

    final symbol = getSymbol(ele, _symbolContext);
    if (symbol != null) {
      _registerSymbol(symbol, ele);

      final occMeta = getOccurrenceMetadata(node);
      occurrences.add(Occurrence(
        range: _lineInfo.getRange(ele.nameOffset, ele.nameLength),
        symbol: symbol,
        symbolRoles: SymbolRole.Definition.value,
        syntaxKind: occMeta.syntaxKind,
      ));
    }
  }

  // references to a type, String, int, SomeClass... anything that can be GoTo'ed
  // This will be utilized for defining `Occurrences`
  void _visitSimpleIdentifier(SimpleIdentifier node) {
    final ele = node.staticElement;

    // ele is null if there's nothing really to do for this node. Example: `void`
    // TODO: One weird ocurrence found: named parameters of external symbols were ele.source 
    //       EX: `color(path, front: Styles.YELLOW);` where `color` comes from the chalk-dart package
    if (ele == null || ele.source == null) return;

    final symbol = getSymbol(ele, _symbolContext);
    if (symbol != null) {
      final occMeta = getOccurrenceMetadata(node);
      occurrences.add(Occurrence(
        range: _lineInfo.getRange(node.offset, node.name.length),
        symbol: symbol,
        syntaxKind: occMeta.syntaxKind,
      ));

      if (!ele.source!.fullName.startsWith(_projectRoot)) {
        if (externalSymbols.every((symbolInfo) => symbolInfo.symbol != symbol)) {
          final meta = getSymbolMetadata(ele);
          externalSymbols.add(SymbolInformation(
            symbol: symbol,
            documentation: meta.documentation,
          ));
        }
      }
    }
  }

  void _registerSymbol(String symbol, Element ele) {
    final meta = getSymbolMetadata(ele);
    symbols.add(SymbolInformation(
      symbol: symbol,
      documentation: meta.documentation,
    ));
  }
}