import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:path/path.dart' as p;
import 'package:package_config/package_config.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:scip_dart/src/flags.dart';

import 'package:scip_dart/src/gen/scip.pb.dart';
import 'package:scip_dart/src/scip_visitor.dart';
import 'package:scip_dart/src/utils.dart';
import 'package:scip_dart/src/version.dart';

Future<Index> indexPackage(
  String root,
  PackageConfig packageConfig,
  Pubspec pubspec,
) async {
  final dirPath = p.normalize(p.absolute(root));

  final metadata = Metadata(
    projectRoot: Uri.file(dirPath).toString(),
    textDocumentEncoding: TextEncoding.UTF8,
    toolInfo: ToolInfo(
      name: 'scip-dart',
      version: scipDartVersion,
      arguments: [],
    ),
  );

  final allPackageRoots = packageConfig.packages
      .map((package) => p.normalize(package.packageUriRoot.toFilePath()))
      .toList();

  final nestedPackages = (await pubspecPathsFor(root))
      .map((path) => p.dirname(path))
      .where((path) => path != root)
      .toList();

  if (Flags.instance.verbose) print('Ignoring subdirectories: $nestedPackages');

  final collection = AnalysisContextCollection(
      includedPaths: [
        ...allPackageRoots,
        dirPath,
      ],
      // only index dart files of the current dart package, to index nested
      // packages, scip indexing can simply be re-run for that nested package
      excludedPaths: nestedPackages);

  if (Flags.instance.performance) print('Analyzing Source');
  final st = Stopwatch()..start();

  final context = collection.contextFor(dirPath);
  final resolvedUnitFutures = context.contextRoot
      .analyzedFiles()
      .where((file) => p.extension(file) == '.dart')
      .map(context.currentSession.getResolvedUnit);

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
      resUnit.errors,
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
