import 'dart:io';

import 'package:analyzer/source/line_info.dart';
import 'package:path/path.dart' as p;

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

/// Removes single or double quotes from a string if they exist
String stripQuotes(String input) {
  // check if input is wrapped in quotes. If it is, remove them
  if (input.startsWith('"') && input.endsWith('"') || input.startsWith("'") && input.endsWith("'")) {
    return input.substring(1, input.length -1);
  }
  return input;
}