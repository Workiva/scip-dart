import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/source/line_info.dart';
import 'package:path/path.dart' as p;
import 'package:package_config/package_config.dart';
import 'package:pubspec_lock_parse/pubspec_lock_parse.dart';
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
  String pubspecStr,
  PubspecLock pubspecLock,
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

  documents.add(_indexPubspec(root, pubspec, pubspecStr, pubspecLock));

  return Index(
    metadata: metadata,
    documents: documents,
    externalSymbols: globalExternalSymbols,
  );
}


Document _indexPubspec(String rootPath, Pubspec pubspec, String pubspecStr, PubspecLock lock) {
  final pubspecLineInfo = LineInfo.fromContent(pubspecStr);

  SymbolInformation __buildSymbol(String depName, Dependency dep) {
    final depVersion = lock.packages[depName]!.version.toString();

    return SymbolInformation(
      displayName: depName,
      symbol: [
        'scip-dart',
        'pub',
        depName,
        depVersion,
        '`pubspec.yaml`/',
      ].join(' '),
      kind: SymbolInformation_Kind.UnspecifiedKind, // TODO: Add SymbolInformation_Kind.Dependency and SymbolInformation_Kind.DevDependency
      signatureDocumentation: Document(
        language: Language.YAML.name,
        text: [
          'name: $depName', 
          'version: $depVersion',
        ].join('\n')
      )
    );
  }

  Occurrence __buildOccurrence(String dependencyTypeKey, String depName, String symbol) {
    final section = getYamlSection(pubspecStr, RegExp('^${dependencyTypeKey}:', multiLine: true));
    if (section == null) {
      throw Exception('Unable to find section "$dependencyTypeKey" in pubspec.yaml');
    }
    final sectionStart = pubspecStr.indexOf(section);
    final depStart = section.indexOf('  ${depName}:') + 2;
    final startOffset = sectionStart + depStart;

    return Occurrence(
      symbol: symbol,
      range: pubspecLineInfo.getRange(startOffset, depName.length)
    );
  }

  final fileSymbol = [
    'scip-dart',
    'pub',
    pubspec.name,
    pubspec.version!,
    '`pubspec.yaml`/',
  ].join(' ');

  final symbols = <SymbolInformation>[
    SymbolInformation(
      symbol: fileSymbol,
      kind: SymbolInformation_Kind.UnspecifiedKind, // TODO: Add SymbolInformation_Kind.Dependency
      signatureDocumentation: Document(
        language: Language.YAML.name,
        text: [
          'name: ${pubspec.name}',
          'version: ${pubspec.version}'
        ].join('\n')
      )
    )
  ];
  final occurrences = <Occurrence>[
    Occurrence(
      symbol: fileSymbol,
      range: [0, 0, 0],
    )
  ];

  for (final dep in pubspec.dependencies.entries) {
    final info = __buildSymbol(dep.key, dep.value);
    symbols.add(info);
    occurrences.add(__buildOccurrence('dependencies', dep.key, info.symbol));
  }

  for (final dep in pubspec.devDependencies.entries) {
    final info = __buildSymbol(dep.key, dep.value);
    symbols.add(info);
    occurrences.add(__buildOccurrence('dev_dependencies', dep.key, info.symbol));
  }

  for (final dep in pubspec.dependencyOverrides.entries) {
    final info = __buildSymbol(dep.key, dep.value);
    symbols.add(info);
    occurrences.add(__buildOccurrence('dependency_overrides', dep.key, info.symbol));
  }

  return Document(
    language: Language.YAML.name,
    relativePath: 'pubspec.yaml',
    symbols: symbols,
    occurrences: occurrences,
  );
}