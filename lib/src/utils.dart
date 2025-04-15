import 'dart:io';

import 'package:analyzer/source/line_info.dart';
import 'package:path/path.dart' as p;

import 'package:collection/collection.dart';
import 'package:scip_dart/src/flags.dart';

/// Returns a list of all the pubspec.yaml paths under a directory.
/// Will recurse into child folders, will not follow links.
Future<List<String>> pubspecPathsFor(String rootDirectory) async {
  return Directory(rootDirectory)
      .list(recursive: true, followLinks: false)
      .where((file) => p.basename(file.path) == 'pubspec.yaml')
      .map((file) => file.path)
      .toList();
}

enum DisplayLevel {
  info,
  warn,
  error,
}

void display(String input, {DisplayLevel level = DisplayLevel.warn}) {
  if (!Flags.instance.verbose) return;

  if (level == DisplayLevel.error) {
    stderr.writeln('ERROR: $input');
  } else {
    print('WARN: $input');
  }
}

extension LineInfoExtension on LineInfo {
  List<int> getRange(int offset, int nameLength) {
    final loc = getLocation(offset);
    return [
      loc.lineNumber - 1,
      loc.columnNumber - 1,
      loc.columnNumber - 1 + nameLength
    ];
  }
}

String? getYamlSection(
  String str,
  Pattern startRegex, {
  bool skipMatchedLine = false,
}) {
  final indentSize = getYamlIndentSize(str);

  final match = startRegex.allMatches(str).firstOrNull;
  if (match == null) return null;

  final startingCharacter = match.start;

  final sectionAndAfterLines = str.substring(startingCharacter).split('\n');
  final sectionKeyLine = sectionAndAfterLines[0];
  final sectionKeyIndentSize =
      sectionKeyLine.length - sectionKeyLine.trimLeft().length;

  final inSectionIndent =
      List.filled(sectionKeyIndentSize + indentSize, ' ').join();

  final inSectionLines = sectionAndAfterLines
      .skip(1) // skip the section key line
      .takeWhile(
          (line) => line.trim().isEmpty || line.startsWith(inSectionIndent))
      .toList();

  return [if (!skipMatchedLine) sectionKeyLine, ...inSectionLines]
      .where((line) => line.trim().isNotEmpty)
      .join('\n');
}

int getYamlIndentSize(String str) {
  final lines = str.split('\n');

  for (var line in lines) {
    if (line.startsWith(' ')) {
      return line.length - line.trimLeft().length;
    }
  }

  return 0;
}
