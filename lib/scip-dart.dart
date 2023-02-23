import 'dart:io';

import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/token.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/source/line_info.dart';
import 'package:path/path.dart' as p;
import 'package:package_config/package_config.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:scip_dart/src/gen/scip.pb.dart';

List<SymbolInformation> externalSymbols = [];

int _localElementIndex = 0;
Map<Element, String> _localElementCache = {};

String _buildLocalSymbol(Element ele) {
  _localElementCache.putIfAbsent(ele, () => 'local ${_localElementIndex++}');
  return _localElementCache[ele]!;
}

Future<Index> indexPackage(String root) async {
  final dirPath = p.normalize(p.absolute(root));

  final metadata = Metadata(
    projectRoot: 'file:/' + dirPath,
    textDocumentEncoding: TextEncoding.UTF8,
    toolInfo: ToolInfo(
      name: 'scip-dart',
      version: '0.0.1',
      arguments: [],
    )
  );

  final packageConfig = await findPackageConfig(Directory(dirPath));
  final pubspec = Pubspec.parse(File(p.join(dirPath, 'pubspec.yaml')).readAsStringSync());

  final allPackageRoots = packageConfig!.packages
      .map((package) => p.normalize(package.packageUriRoot.toFilePath()))
      .toList();

  final collection = AnalysisContextCollection(includedPaths: allPackageRoots);

  final context = collection.contextFor(p.join(dirPath, 'lib'));
  final files = context.contextRoot
    .analyzedFiles()
    .where((file) => p.extension(file) == '.dart');

  final resolvedUnits = await Future.wait(files.map(context.currentSession.getResolvedUnit));

  final documents = resolvedUnits
    .whereType<ResolvedUnitResult>()
    .map((resUnit) => analyzeFile(
      dirPath,
      resUnit,
      packageConfig,
      pubspec,
    ))
    .toList();

  return Index(
    metadata: metadata,
    documents: documents,
    externalSymbols: externalSymbols,
  );
}

Document analyzeFile(
  String projectRoot, 
  ResolvedUnitResult resUnit,
  PackageConfig packageConfig,
  Pubspec pubspec,
) {
  final visitor = ScipVisitor(projectRoot, resUnit.lineInfo, packageConfig, pubspec);
  resUnit.unit.accept(visitor);

  return Document(
    language: Language.Dart.name,
    relativePath: p.relative(resUnit.path, from: projectRoot),
    occurrences: visitor.occurrences,
    symbols: visitor.symbols,
  );
}

class ScipVisitor extends GeneralizingAstVisitor {
  String projectRoot;
  LineInfo lineInfo;
  PackageConfig packageConfig;
  Pubspec pubspec;

  List<Occurrence> occurrences = [];
  List<SymbolInformation> symbols = [];

  ScipVisitor(
    this.projectRoot,
    this.lineInfo,
    this.packageConfig,
    this.pubspec,
  );

  @override
  void visitNode(AstNode node) {
    print(':: ${node} : ${node.runtimeType} ${node is Declaration}');
    super.visitNode(node);
  }

  String getScheme() => 'scip-dart';

  String getPackage(Element ele) {
    final prefix = 'pub';

    if (ele.library?.isInSdk == true) {
      final subPackage = ele.library!.isDartCore ? 'core' : 'async';
      return '$prefix dart:$subPackage ${ele.library!.languageVersion.package}';
    }

    if (ele.source == null) {
      throw Exception('Not really sure what to do here');
    };

    if (ele.source!.fullName.startsWith(projectRoot)) {
      return '$prefix ${pubspec.name} ${pubspec.version}';
    } else {
      final package = packageConfig.packageOf(Uri.file(ele.source!.fullName));
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

  String? getDescriptor(Element ele) {
    if (ele.source == null) {
      print('WARN: Element has null source: ${ele.runtimeType} (${ele}) ${ele.location?.components}');
      return null;
    }
    final sourcePath = ele.source!.fullName;
    

    String filePath;
    if (sourcePath.startsWith(projectRoot)) {
      filePath = sourcePath.substring('$projectRoot/'.length);
    } else if (ele.library?.isDartCore == true) {
      // TODO: there has to be a better way to get the path to a dart:core file
      filePath = sourcePath.substring(sourcePath.indexOf('lib/core/'));
    } else {
      final config = packageConfig.packageOf(Uri.file(sourcePath));
      filePath = sourcePath.substring(config!.root.toFilePath().length);
    }

    final namespace = filePath
      .split('/')
      .map((segment) => segment.contains('.') ? '`$segment`' : segment)
      .join('/');

    if (ele is ClassElement || ele is EnumElement || ele is ExtensionElement) {
      return '$namespace/${ele.name}#';
    }

    if (ele is TypeParameterElement) {
      print(':: ${ele.nameOffset}');
      return '$namespace/${ele.name}#';
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

    if (ele is ParameterElement) {
      final parentName = ele.enclosingElement?.name;
      if (parentName?.isEmpty == true) {
        return _buildLocalSymbol(ele);
      }
      return '$namespace/${parentName}().(${ele.name})';
    } 
    
    if (ele is PropertyAccessorElement) {
      final parentName = ele.enclosingElement.name;
      return '$namespace/$parentName#${ele.name}';
    }

    print('WARN: Received unknown type ${ele.runtimeType}');
    return null;
  }

  String? getSymbol(Element ele) {
    if (ele is LocalVariableElement || ele.isPrivate) {
      _localElementCache.putIfAbsent(ele, () => 'local ${_localElementIndex++}');
      return _localElementCache[ele]!;
    }

    final descriptor = getDescriptor(ele);

    if (descriptor == null) return null;

    return '${getScheme()} ${getPackage(ele)} ${getDescriptor(ele)}';
  }

  @override
  void visitDeclaration(Declaration node) {
    final ele = node.declaredElement!;

    final symbol = getSymbol(ele);

    print(symbol);

    if (symbol != null) {
      symbols.add(SymbolInformation(symbol: symbol));
      occurrences.add(Occurrence(
        range: lineInfo.getRangeFromOffset(ele.nameOffset, ele.nameLength),
        symbol: symbol,
        symbolRoles: SymbolRole.Definition.value
      ));
    }

    super.visitDeclaration(node);
  }

  // references to a type, String, int, SomeClass... anything that can be GoTo'ed
  // This will be utilized for defining `Occurrences`
  @override
  void visitSimpleIdentifier(SimpleIdentifier node) {
    final ele = node.staticElement;
    if (ele == null) {
      super.visitSimpleIdentifier(node);
      return;
    }

    final symbol = getSymbol(ele);
    print(symbol);
    
    if (symbol != null) {
      occurrences.add(Occurrence(
        range: lineInfo.getRangeFromOffset(node.offset, node.name.length),
        symbol: symbol,
      ));

      if (!ele.source!.fullName.startsWith(projectRoot)) {
        if (externalSymbols.every((symbolInfo) => symbolInfo.symbol != symbol)) {
          externalSymbols.add(SymbolInformation(symbol: symbol));
        }
      }
    }

    super.visitSimpleIdentifier(node);
  }
}

extension LineInfoExtension on LineInfo {
  List<int> getRangeFromOffset(int offset, int nameLength) {
    final loc = getLocation(offset);
    return [
      loc.lineNumber - 1,
      loc.columnNumber - 1,
      loc.columnNumber - 1 + nameLength
    ];
  }

  List<int> getRangeFromNode(AstNode node) {
    return getRange(node.beginToken, node.endToken);
  }

  List<int> getRange(Token begin, Token end) {
    final beginLoc = getLocation(begin.charOffset);
    final endLoc = getLocation(end.charOffset);

    return [
      beginLoc.lineNumber - 1,
      beginLoc.columnNumber - 1,
      if (beginLoc.lineNumber != endLoc.lineNumber) endLoc.lineNumber -1,
      endLoc.columnNumber - 1,
    ];
  }
}