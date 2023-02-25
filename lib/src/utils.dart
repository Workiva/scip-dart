import 'package:analyzer/source/line_info.dart';

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