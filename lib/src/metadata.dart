import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/diagnostic/diagnostic.dart';
import 'package:analyzer/error/error.dart';
import 'package:scip_dart/src/gen/scip.pb.dart' as proto;

/// The collection of AnalysisHint codes that should be considered "Unused".
/// Annoyingly dart does not export their AnalysisHint, if this ever changes
/// these should directly reference the instances within:
/// https://github.com/dart-lang/sdk/blob/main/pkg/analyzer/lib/src/error/codes.g.dart
const _unusedHintCodes = {
  'UNUSED_CATCH_CLAUSE',
  'UNUSED_CATCH_STACK',
  'UNUSED_ELEMENT',
  'UNUSED_ELEMENT_PARAMETER',
  'UNUSED_FIELD',
  'UNUSED_IMPORT',
  'UNUSED_LABEL',
  'UNUSED_RESULT',
  'UNUSED_SHOWN_NAME',
};

/// Refers to any additional metadata attached to a `SymbolInformation`
/// struct on the protobuf spec.
///
/// Use [getSymbolMetadata] to retrieve [SymbolMetadata] for a provided
/// [Element] type.
class SymbolMetadata {
  proto.Document signatureDocumentation;

  List<String>? documentation;
  List<proto.Diagnostic>? diagnostics;

  SymbolMetadata({
    required this.signatureDocumentation,
    this.documentation,
    this.diagnostics,
  });
}

/// Returns a [SymbolMetadata] object for a provided [Element] type.
///
/// This information is used to embellish `SymbolInformation` struct's
/// within the protobuf schema for scip
SymbolMetadata getSymbolMetadata(
  Element element,
  int offset,
  List<AnalysisError> analysisErrors,
) {
  final displayString = element.getDisplayString(
    withNullability: false,
    multiline: true,
  );

  final docComment = element.documentationComment?.replaceAll(
    RegExp(r'^\s*///\s*', multiLine: true),
    '',
  );

  final diagnostics = analysisErrors
      .where((error) => error.offset == offset)
      .map((error) => proto.Diagnostic(
              code: error.errorCode.name,
              message: error.message,
              severity: error.severity.toProto(),
              tags: [
                if (element.hasDeprecated) proto.DiagnosticTag.Deprecated,
                if (_unusedHintCodes.contains(error.errorCode.uniqueName))
                  proto.DiagnosticTag.Unnecessary,
              ]))
      .toList();

  return SymbolMetadata(
    signatureDocumentation: proto.Document(
      language: proto.Language.Dart.name,
      text: displayString,
    ),
    documentation: docComment != null ? [docComment] : null,
    diagnostics: diagnostics.isNotEmpty ? diagnostics : null,
  );
}

extension _SeverityConverter on Severity {
  proto.Severity toProto() {
    switch (this) {
      case Severity.error:
        return proto.Severity.Error;
      case Severity.warning:
        return proto.Severity.Warning;
      case Severity.info:
        return proto.Severity.Information;
    }
  }
}
