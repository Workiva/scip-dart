import 'package:analyzer/dart/element/element.dart';

/// Refers to any additional metadata attached to a `SymbolInformation`
/// struct on the protobuf spec.
///
/// Use [getSymbolMetadata] to retrieve [SymbolMetadata] for a provided
/// [Element] type.
class SymbolMetadata {
  List<String> documentation;

  SymbolMetadata({required this.documentation});
}

/// Returns a [SymbolMetadata] object for a provided [Element] type.
///
/// This information is used to embellish `SymbolInformation` struct's
/// within the protobuf schema for scip
SymbolMetadata getSymbolMetadata(Element element) {
  final displayString = element.getDisplayString(
    withNullability: false,
    multiline: true,
  );


  final docComment = element.documentationComment?.replaceAll(
    RegExp(r'^\s*///\s*', multiLine: true),
    '',
  );

  final packagePath = _getFilePackageUri(element);

  return SymbolMetadata(
    documentation: [
      [
        '```dart\n$displayString\n```',
        if (packagePath != null) '_${packagePath}_'
      ].join('\n'),
      if (docComment != null) docComment
    ],
  );
}

String? _getFilePackageUri(Element element) {
  if (element.library != null) {
    final path = element.library!.definingCompilationUnit.source.fullName;
    return element.context.sourceFactory.pathToUri(path)?.toString();
  }

  return null;
}