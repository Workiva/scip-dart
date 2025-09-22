import 'package:dart_dev/dart_dev.dart';
import 'package:glob/glob.dart';

final config = {
  ...coreConfig,
  'format': FormatTool()
    ..exclude = [
      Glob('snapshots/**'),
      Glob('lib/src/gen/*.dart'),
      Glob('test/**')
    ],
};
