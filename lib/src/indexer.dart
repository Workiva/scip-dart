import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:path/path.dart' as p;
import 'package:package_config/package_config.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:scip_dart/src/flags.dart';

import 'package:scip_dart/src/gen/scip.pb.dart';
import 'package:scip_dart/src/scip_visitor.dart';

Future<Index> indexPackage(
  String root,
  PackageConfig packageConfig,
  Pubspec pubspec,
) async {
  final dirPath = p.normalize(p.absolute(root));

  final metadata = Metadata(
      projectRoot: 'file:/' + dirPath,
      textDocumentEncoding: TextEncoding.UTF8,
      toolInfo: ToolInfo(
        name: 'scip-dart',
        version: '0.0.1',
        arguments: [],
      ));

  final allPackageRoots = packageConfig.packages
      .map((package) => p.normalize(package.packageUriRoot.toFilePath()))
      .toList();

  final indexedPaths = Flags.instance.paths.map(
    (relPath) => p.normalize(p.join(dirPath, relPath)),
  );

  final collection = AnalysisContextCollection(
    includedPaths: [
      // ...allPackageRoots,
      ...indexedPaths,
    ],
  );
  print(indexedPaths.toList());
  if (Flags.instance.performance) print('Analyzing Source');
  final st = Stopwatch()..start();

  final resolvedUnitFutures = indexedPaths.map((path) {
    final context = collection.contextFor(path);
    final files = context.contextRoot
        .analyzedFiles()
        .where((file) => p.extension(file) == '.dart');
    
    files.forEach((file) => print(file));

    return files.map(context.currentSession.getResolvedUnit);
  }).expand((resUnits) => resUnits);

  final resolvedUnits = await Future.wait(resolvedUnitFutures);

  if (Flags.instance.performance) {
    print('Analyzing Source took: ${st.elapsedMilliseconds}ms');
    st.reset();
    print('Parsing Ast');
  }

  final documents =
      resolvedUnits.whereType<ResolvedUnitResult>().map((resUnit) {
    final relativePath = p.relative(resUnit.path, from: dirPath);

    final visitor = ScipVisitor(
      relativePath,
      dirPath,
      resUnit.lineInfo,
      packageConfig,
      pubspec,
    );
    resUnit.unit.accept(visitor);

    return Document(
      language: Language.Dart.name,
      relativePath: relativePath,
      occurrences: visitor.occurrences,
      symbols: visitor.symbols,
    );
  }).toList();

  if (Flags.instance.performance) {
    print('Parsing Ast took: ${st.elapsedMilliseconds}ms');
  }

  return Index(
    metadata: metadata,
    documents: documents,
    externalSymbols: globalExternalSymbols,
  );
}
