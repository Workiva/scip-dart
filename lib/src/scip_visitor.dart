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
    } else if (node is SimpleFormalParameter) {
      _visitSimpleFormalParameter(node);
    } else if (node is SimpleIdentifier) {
      _visitSimpleIdentifier(node);
    }

    super.visitNode(node);
  }

  void _visitDeclaration(Declaration node) {
    if (node.declaredElement == null) return;

    final element = node.declaredElement!;

    final symbol = _symbolGenerator.symbolFor(element);
    if (symbol != null) {
      _registerSymbol(symbol, element);

      occurrences.add(Occurrence(
        range: _lineInfo.getRange(element.nameOffset, element.nameLength),
        symbol: symbol,
        symbolRoles: SymbolRole.Definition.value,
      ));
    }
  }

  void _visitSimpleFormalParameter(SimpleFormalParameter node) {
    if (node.declaredElement == null) return;

    final element = node.declaredElement!;

    final symbol = _symbolGenerator.symbolFor(element);
    if (symbol != null) {
      _registerSymbol(symbol, element);

      occurrences.add(Occurrence(
        range: _lineInfo.getRange(element.nameOffset, element.nameLength),
        symbol: symbol,
        symbolRoles: SymbolRole.Definition.value,
      ));
    }
  }

  // references to a type, String, int, SomeClass... anything that can be GoTo'ed
  // This will be utilized for defining `Occurrences`
  void _visitSimpleIdentifier(SimpleIdentifier node) {
    final element = node.staticElement;

    // element is null if there's nothing really to do for this node. Example: `void`
    // TODO: One weird issue found: named parameters of external symbols were element.source 
    //       EX: `color(path, front: Styles.YELLOW);` where `color` comes from the chalk-dart package
    if (element == null || element.source == null) return;

    final symbol = _symbolGenerator.symbolFor(element);
    if (symbol != null) {
      occurrences.add(Occurrence(
        range: _lineInfo.getRange(node.offset, node.name.length),
        symbol: symbol,
      ));

      if (!element.source!.fullName.startsWith(_projectRoot)) {
        if (globalExternalSymbols.every((symbolInfo) => symbolInfo.symbol != symbol)) {
          final meta = getSymbolMetadata(element);
          globalExternalSymbols.add(SymbolInformation(
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