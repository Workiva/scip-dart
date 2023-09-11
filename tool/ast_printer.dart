import 'dart:io';

import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:args/args.dart';
import 'package:chalk/chalk.dart';
import 'package:package_config/package_config.dart';
import 'package:path/path.dart' as p;

Future<void> main(List<String> args) async {
  final result = ArgParser().parse(args);

  final root = result.rest.first;
  final dirPath = p.normalize(p.absolute(root));

  final packageConfig = await findPackageConfig(Directory(root));
  if (packageConfig == null) {
    stderr.writeln('ERROR: Unable to locate packageConfig');
    exit(1);
  }

  final allPackageRoots = packageConfig.packages
      .map((package) => p.normalize(package.packageUriRoot.toFilePath()))
      .toList();

  final collection = AnalysisContextCollection(
    includedPaths: [
      ...allPackageRoots,
      dirPath,
    ],
  );

  final context = collection.contextFor(dirPath);
  final resolvedUnitFutures = context.contextRoot
      .analyzedFiles()
      .where((file) => p.extension(file) == '.dart')
      .map(context.currentSession.getResolvedUnit);

  final resolvedUnits = await Future.wait(resolvedUnitFutures);

  resolvedUnits
    .whereType<ResolvedUnitResult>()
    .forEach((unit) {
      print('');
      print('${chalk.yellow(unit.path.substring(dirPath.length + 1))}');
      unit.unit.visitChildren(AstPrinter());
    });
  print('');
}

class AstPrinter extends GeneralizingAstVisitor {
  int indent = 1;

  @override
  void visitNode(AstNode node) {
    final indentStr = List.filled(indent, '    ').join('');
    print('$indentStr${chalk.green(node.toString())} ${chalk.faint(node.runtimeType.toString())}');

    indent++;
    super.visitNode(node);
    indent--;
  }
}