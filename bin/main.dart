import 'dart:io';

import 'package:scip_dart/scip-dart.dart';

Future<void> main(List<String> args) async {

  final packageRoot = args.length > 0 ? args.first : Directory.current.path;
  final index = await indexPackage(packageRoot);

  File('index.scip').writeAsBytesSync(index.writeToBuffer());
}