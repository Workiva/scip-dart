import 'dart:io';

import 'package:args/args.dart';
import 'package:scip_dart/scip_dart.dart';
import 'package:package_config/package_config.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:path/path.dart' as p;
import 'package:scip_dart/src/flags.dart';

Future<void> main(List<String> args) async {
  final result = (ArgParser()
        ..addFlag('performance', aliases: ['perf'], defaultsTo: false)
        ..addFlag('verbose', abbr: 'v', defaultsTo: false))
      .parse(args);

  Flags.instance.init(result);

  final packageRoot =
      result.rest.length > 0 ? result.rest.first : Directory.current.path;

  final packageConfig = await findPackageConfig(Directory(packageRoot));
  if (packageConfig == null) {
    stderr.writeln('ERROR: Unable to locate packageConfig');
    exit(1);
  }

  final pubspecFile = File(p.join(packageRoot, 'pubspec.yaml'));
  if (!pubspecFile.existsSync()) {
    stderr.writeln('ERROR: Unable to locate pubspec.yaml');
    exit(1);
  }
  final pubspec = Pubspec.parse(pubspecFile.readAsStringSync());

  final index = await indexPackage(packageRoot, packageConfig, pubspec);

  File('index.scip').writeAsBytesSync(index.writeToBuffer());
}