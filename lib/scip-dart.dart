import 'dart:io';

import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:path/path.dart' as p;
import 'package:package_config/package_config.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:scip_dart/src/gen/scip.pb.dart';
import 'package:scip_dart/src/scip_visitor.dart';

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

  final externalSymbols = <SymbolInformation>[];
  final documents = resolvedUnits
    .whereType<ResolvedUnitResult>()
    .map((resUnit) {

      final relativePath = p.relative(resUnit.path, from: dirPath);

      final visitor = ScipVisitor(
        relativePath,
        dirPath,
        resUnit.lineInfo,
        packageConfig,
        pubspec,
      );
      resUnit.unit.accept(visitor);

      externalSymbols.addAll(visitor.externalSymbols);

      return Document(
        language: Language.Dart.name,
        relativePath: relativePath,
        occurrences: visitor.occurrences,
        symbols: visitor.symbols,
      );
    })
    .toList();

  return Index(
    metadata: metadata,
    documents: documents,
    externalSymbols: externalSymbols,
  );
}