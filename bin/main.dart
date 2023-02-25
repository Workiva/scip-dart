import 'dart:io';

import 'package:args/args.dart';
import 'package:scip_dart/scip-dart.dart';

Future<void> main(List<String> args) async {
  final result = (ArgParser()
    ..addFlag('performance', aliases: ['pref'], defaultsTo: false)
  ).parse(args);

  final packageRoot = result.rest.length > 0 ? result.rest.first : Directory.current.path;
  final index = await indexPackage(
    packageRoot,
    logPerformance: result['performance'],
  );

  File('index.scip').writeAsBytesSync(index.writeToBuffer());
}