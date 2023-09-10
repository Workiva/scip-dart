import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/diagnostic/diagnostic.dart';
import 'package:analyzer/error/error.dart';
import 'package:scip_dart/src/gen/scip.pb.dart' as proto;

/// Refers to any additional metadata attached to a `SymbolInformation`
/// struct on the protobuf spec.
///
/// Use [getSymbolMetadata] to retrieve [SymbolMetadata] for a provided
/// [Element] type.
class SymbolMetadata {
  List<String> documentation;

  List<proto.Diagnostic>? diagnostics;

  SymbolMetadata({required this.documentation, this.diagnostics});
}

/// Returns a [SymbolMetadata] object for a provided [Element] type.
///
/// This information is used to embellish `SymbolInformation` struct's
/// within the protobuf schema for scip
SymbolMetadata getSymbolMetadata(Element element, List<AnalysisError> analysisErrors,) {
  final displayString = element.getDisplayString(
    withNullability: false,
    multiline: true,
  );

  final docComment = element.documentationComment?.replaceAll(
    RegExp(r'^\s*///\s*', multiLine: true),
    '',
  );

  final diagnostics = analysisErrors
    .where((error) => error.source == element.source)
    .map((error) {
      return proto.Diagnostic(
        code: error.errorCode.uniqueName,
        message: error.message,
        severity: error.severity.toProto(),
        tags: element.hasDeprecated ? [proto.DiagnosticTag.Deprecated] : null,
      );
    }).toList();

  return SymbolMetadata(
    documentation: [
      '```dart\n$displayString\n```',
      if (docComment != null) docComment
    ],
    diagnostics: diagnostics.isNotEmpty ? diagnostics : null,
  );
}

extension _SeverityConverter on Severity {
  proto.Severity toProto() {
    switch (this) {
      case Severity.error: return proto.Severity.Error;
      case Severity.warning: return proto.Severity.Warning;
      case Severity.info: return proto.Severity.Information;
    }
  }
}