import 'dart:io';

import 'package:analyzer/source/line_info.dart';
import 'package:scip_dart/src/flags.dart';

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

extension TrimIndent on String {
  String trimIndent() {
    final lines = split('\n');

    final shortestLineIndent = lines
        .where((line) =>
            line.trim().isNotEmpty) // ignore lines with only whitespace
        .fold<int>(
      9999999,
      (acc, line) {
        final pref = line.length - line.trimLeft().length;
        return pref < acc ? pref : acc;
      },
    );

    return lines
            .map((line) {
              // leave only whitespace lines alone
              if (line.trim().isEmpty) return line;

              return line.substring(shortestLineIndent);
            })
            .join('\n')
            .trim() +
        '\n';
  }
}