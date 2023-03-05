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

extension TrimQuotes on String {
  String trimQuotes() {
    final single = "'";
    final double = '"';

    if (
      startsWith(single) && endsWith(single) ||
      startsWith(double) && endsWith(double)
    ) {
      return substring(1, length-1);    
    }

    return this;
  }
}