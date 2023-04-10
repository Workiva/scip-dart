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

/// Removes single or double quotes from a string if they exist
String stripQuotes(String input) {
  // check if input is wrapped in quotes. If it is, remove them
  if (input.startsWith('"') && input.endsWith('"') || input.startsWith("'") && input.endsWith("'")) {
    return input.substring(1, input.length -1);
  }
  return input;
}