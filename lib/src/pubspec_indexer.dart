
import 'package:analyzer/source/line_info.dart';
import 'package:pubspec_lock_parse/pubspec_lock_parse.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:scip_dart/src/utils.dart';

import 'gen/scip.pb.dart';

/// Generates a scip document representation of a pubspec.yaml file. Output
/// specification looks like the following:
/// 
/// ```yaml
/// # scip-dart pub foo_pkg 1.0.0 `pubspec.yaml`/
///  name: foo_pkg
///  version: 1.0.0
///  
///  dependencies:
///    some_pkg: ^1.0.5
/// #  ^^^^^^^^ scip-dart pub some_pkg 1.5.6 `pubspec.yaml`/
/// ```
Document indexPubspec({
  required Pubspec pubspec, 
  required String pubspecStr, 
  required PubspecLock pubspecLock,
}) {
  final pubspecLineInfo = LineInfo.fromContent(pubspecStr);

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

  final deps = {
    DependencyKind.regular: pubspec.dependencies,
    DependencyKind.dev: pubspec.devDependencies,
    DependencyKind.override: pubspec.dependencyOverrides,
  };
  for (final kind in deps.keys) {
    for (final dep in deps[kind]!.entries) {
      final info = _buildSymbol(dep.key, pubspecLock);
      symbols.add(info);
      occurrences.add(Occurrence(
        symbol: info.symbol,
        range: pubspecLineInfo.getDependencyRange(pubspecStr, dep.key, kind),
      ));
    }
  }

  return Document(
    language: Language.YAML.name,
    relativePath: 'pubspec.yaml',
    symbols: symbols,
    occurrences: occurrences,
  );
}

SymbolInformation _buildSymbol(String depName, PubspecLock lock) {
  final depVersion = lock.packages[depName]?.version.toString();
  if (depVersion == null) {
    throw Exception('Unable to find ${depName} in pubspec.lock. Have you ran pub get?');
  }

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

enum DependencyKind {
  regular('^dependencies:'),
  dev('^dev_dependencies:'),
  override('^dependency_overrides:');

  final String matcher;
  const DependencyKind(this.matcher);
}

extension _PubspecLineInfo on LineInfo {
  List<int> getDependencyRange(String pubspecStr, String name, DependencyKind kind) {
    final section = getYamlSection(pubspecStr, RegExp(kind.matcher, multiLine: true));
    if (section == null) {
      throw Exception('Unable to find section "${kind.matcher}" in pubspec.yaml');
    }
    final sectionStart = pubspecStr.indexOf(section);
    final depStart = section.indexOf('  ${name}:') + 2;
    final startOffset = sectionStart + depStart;

    return getRange(startOffset, name.length);
  }
}