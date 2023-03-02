///
//  Generated code. Do not modify.
//  source: lib/src/gen/scip.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use protocolVersionDescriptor instead')
const ProtocolVersion$json = const {
  '1': 'ProtocolVersion',
  '2': const [
    const {'1': 'UnspecifiedProtocolVersion', '2': 0},
  ],
};

/// Descriptor for `ProtocolVersion`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List protocolVersionDescriptor = $convert.base64Decode('Cg9Qcm90b2NvbFZlcnNpb24SHgoaVW5zcGVjaWZpZWRQcm90b2NvbFZlcnNpb24QAA==');
@$core.Deprecated('Use textEncodingDescriptor instead')
const TextEncoding$json = const {
  '1': 'TextEncoding',
  '2': const [
    const {'1': 'UnspecifiedTextEncoding', '2': 0},
    const {'1': 'UTF8', '2': 1},
    const {'1': 'UTF16', '2': 2},
  ],
};

/// Descriptor for `TextEncoding`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List textEncodingDescriptor = $convert.base64Decode('CgxUZXh0RW5jb2RpbmcSGwoXVW5zcGVjaWZpZWRUZXh0RW5jb2RpbmcQABIICgRVVEY4EAESCQoFVVRGMTYQAg==');
@$core.Deprecated('Use symbolRoleDescriptor instead')
const SymbolRole$json = const {
  '1': 'SymbolRole',
  '2': const [
    const {'1': 'UnspecifiedSymbolRole', '2': 0},
    const {'1': 'Definition', '2': 1},
    const {'1': 'Import', '2': 2},
    const {'1': 'WriteAccess', '2': 4},
    const {'1': 'ReadAccess', '2': 8},
    const {'1': 'Generated', '2': 16},
    const {'1': 'Test', '2': 32},
  ],
};

/// Descriptor for `SymbolRole`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List symbolRoleDescriptor = $convert.base64Decode('CgpTeW1ib2xSb2xlEhkKFVVuc3BlY2lmaWVkU3ltYm9sUm9sZRAAEg4KCkRlZmluaXRpb24QARIKCgZJbXBvcnQQAhIPCgtXcml0ZUFjY2VzcxAEEg4KClJlYWRBY2Nlc3MQCBINCglHZW5lcmF0ZWQQEBIICgRUZXN0ECA=');
@$core.Deprecated('Use syntaxKindDescriptor instead')
const SyntaxKind$json = const {
  '1': 'SyntaxKind',
  '2': const [
    const {'1': 'UnspecifiedSyntaxKind', '2': 0},
    const {'1': 'Comment', '2': 1},
    const {'1': 'PunctuationDelimiter', '2': 2},
    const {'1': 'PunctuationBracket', '2': 3},
    const {'1': 'Keyword', '2': 4},
    const {
      '1': 'IdentifierKeyword',
      '2': 4,
      '3': const {'1': true},
    },
    const {'1': 'IdentifierOperator', '2': 5},
    const {'1': 'Identifier', '2': 6},
    const {'1': 'IdentifierBuiltin', '2': 7},
    const {'1': 'IdentifierNull', '2': 8},
    const {'1': 'IdentifierConstant', '2': 9},
    const {'1': 'IdentifierMutableGlobal', '2': 10},
    const {'1': 'IdentifierParameter', '2': 11},
    const {'1': 'IdentifierLocal', '2': 12},
    const {'1': 'IdentifierShadowed', '2': 13},
    const {'1': 'IdentifierNamespace', '2': 14},
    const {
      '1': 'IdentifierModule',
      '2': 14,
      '3': const {'1': true},
    },
    const {'1': 'IdentifierFunction', '2': 15},
    const {'1': 'IdentifierFunctionDefinition', '2': 16},
    const {'1': 'IdentifierMacro', '2': 17},
    const {'1': 'IdentifierMacroDefinition', '2': 18},
    const {'1': 'IdentifierType', '2': 19},
    const {'1': 'IdentifierBuiltinType', '2': 20},
    const {'1': 'IdentifierAttribute', '2': 21},
    const {'1': 'RegexEscape', '2': 22},
    const {'1': 'RegexRepeated', '2': 23},
    const {'1': 'RegexWildcard', '2': 24},
    const {'1': 'RegexDelimiter', '2': 25},
    const {'1': 'RegexJoin', '2': 26},
    const {'1': 'StringLiteral', '2': 27},
    const {'1': 'StringLiteralEscape', '2': 28},
    const {'1': 'StringLiteralSpecial', '2': 29},
    const {'1': 'StringLiteralKey', '2': 30},
    const {'1': 'CharacterLiteral', '2': 31},
    const {'1': 'NumericLiteral', '2': 32},
    const {'1': 'BooleanLiteral', '2': 33},
    const {'1': 'Tag', '2': 34},
    const {'1': 'TagAttribute', '2': 35},
    const {'1': 'TagDelimiter', '2': 36},
  ],
  '3': const {'2': true},
};

/// Descriptor for `SyntaxKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List syntaxKindDescriptor = $convert.base64Decode('CgpTeW50YXhLaW5kEhkKFVVuc3BlY2lmaWVkU3ludGF4S2luZBAAEgsKB0NvbW1lbnQQARIYChRQdW5jdHVhdGlvbkRlbGltaXRlchACEhYKElB1bmN0dWF0aW9uQnJhY2tldBADEgsKB0tleXdvcmQQBBIZChFJZGVudGlmaWVyS2V5d29yZBAEGgIIARIWChJJZGVudGlmaWVyT3BlcmF0b3IQBRIOCgpJZGVudGlmaWVyEAYSFQoRSWRlbnRpZmllckJ1aWx0aW4QBxISCg5JZGVudGlmaWVyTnVsbBAIEhYKEklkZW50aWZpZXJDb25zdGFudBAJEhsKF0lkZW50aWZpZXJNdXRhYmxlR2xvYmFsEAoSFwoTSWRlbnRpZmllclBhcmFtZXRlchALEhMKD0lkZW50aWZpZXJMb2NhbBAMEhYKEklkZW50aWZpZXJTaGFkb3dlZBANEhcKE0lkZW50aWZpZXJOYW1lc3BhY2UQDhIYChBJZGVudGlmaWVyTW9kdWxlEA4aAggBEhYKEklkZW50aWZpZXJGdW5jdGlvbhAPEiAKHElkZW50aWZpZXJGdW5jdGlvbkRlZmluaXRpb24QEBITCg9JZGVudGlmaWVyTWFjcm8QERIdChlJZGVudGlmaWVyTWFjcm9EZWZpbml0aW9uEBISEgoOSWRlbnRpZmllclR5cGUQExIZChVJZGVudGlmaWVyQnVpbHRpblR5cGUQFBIXChNJZGVudGlmaWVyQXR0cmlidXRlEBUSDwoLUmVnZXhFc2NhcGUQFhIRCg1SZWdleFJlcGVhdGVkEBcSEQoNUmVnZXhXaWxkY2FyZBAYEhIKDlJlZ2V4RGVsaW1pdGVyEBkSDQoJUmVnZXhKb2luEBoSEQoNU3RyaW5nTGl0ZXJhbBAbEhcKE1N0cmluZ0xpdGVyYWxFc2NhcGUQHBIYChRTdHJpbmdMaXRlcmFsU3BlY2lhbBAdEhQKEFN0cmluZ0xpdGVyYWxLZXkQHhIUChBDaGFyYWN0ZXJMaXRlcmFsEB8SEgoOTnVtZXJpY0xpdGVyYWwQIBISCg5Cb29sZWFuTGl0ZXJhbBAhEgcKA1RhZxAiEhAKDFRhZ0F0dHJpYnV0ZRAjEhAKDFRhZ0RlbGltaXRlchAkGgIQAQ==');
@$core.Deprecated('Use severityDescriptor instead')
const Severity$json = const {
  '1': 'Severity',
  '2': const [
    const {'1': 'UnspecifiedSeverity', '2': 0},
    const {'1': 'Error', '2': 1},
    const {'1': 'Warning', '2': 2},
    const {'1': 'Information', '2': 3},
    const {'1': 'Hint', '2': 4},
  ],
};

/// Descriptor for `Severity`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List severityDescriptor = $convert.base64Decode('CghTZXZlcml0eRIXChNVbnNwZWNpZmllZFNldmVyaXR5EAASCQoFRXJyb3IQARILCgdXYXJuaW5nEAISDwoLSW5mb3JtYXRpb24QAxIICgRIaW50EAQ=');
@$core.Deprecated('Use diagnosticTagDescriptor instead')
const DiagnosticTag$json = const {
  '1': 'DiagnosticTag',
  '2': const [
    const {'1': 'UnspecifiedDiagnosticTag', '2': 0},
    const {'1': 'Unnecessary', '2': 1},
    const {'1': 'Deprecated', '2': 2},
  ],
};

/// Descriptor for `DiagnosticTag`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List diagnosticTagDescriptor = $convert.base64Decode('Cg1EaWFnbm9zdGljVGFnEhwKGFVuc3BlY2lmaWVkRGlhZ25vc3RpY1RhZxAAEg8KC1VubmVjZXNzYXJ5EAESDgoKRGVwcmVjYXRlZBAC');
@$core.Deprecated('Use languageDescriptor instead')
const Language$json = const {
  '1': 'Language',
  '2': const [
    const {'1': 'UnspecifiedLanguage', '2': 0},
    const {'1': 'ABAP', '2': 60},
    const {'1': 'APL', '2': 49},
    const {'1': 'Ada', '2': 39},
    const {'1': 'Agda', '2': 45},
    const {'1': 'AsciiDoc', '2': 86},
    const {'1': 'Assembly', '2': 58},
    const {'1': 'Awk', '2': 66},
    const {'1': 'Bat', '2': 68},
    const {'1': 'BibTeX', '2': 81},
    const {'1': 'C', '2': 34},
    const {'1': 'COBOL', '2': 59},
    const {'1': 'CPP', '2': 35},
    const {'1': 'CSS', '2': 26},
    const {'1': 'CSharp', '2': 1},
    const {'1': 'Clojure', '2': 8},
    const {'1': 'Coffeescript', '2': 21},
    const {'1': 'CommonLisp', '2': 9},
    const {'1': 'Coq', '2': 47},
    const {'1': 'Dart', '2': 3},
    const {'1': 'Delphi', '2': 57},
    const {'1': 'Diff', '2': 88},
    const {'1': 'Dockerfile', '2': 80},
    const {'1': 'Dyalog', '2': 50},
    const {'1': 'Elixir', '2': 17},
    const {'1': 'Erlang', '2': 18},
    const {'1': 'FSharp', '2': 42},
    const {'1': 'Fish', '2': 65},
    const {'1': 'Flow', '2': 24},
    const {'1': 'Fortran', '2': 56},
    const {'1': 'Git_Commit', '2': 91},
    const {'1': 'Git_Config', '2': 89},
    const {'1': 'Git_Rebase', '2': 92},
    const {'1': 'Go', '2': 33},
    const {'1': 'Groovy', '2': 7},
    const {'1': 'HTML', '2': 30},
    const {'1': 'Hack', '2': 20},
    const {'1': 'Handlebars', '2': 90},
    const {'1': 'Haskell', '2': 44},
    const {'1': 'Idris', '2': 46},
    const {'1': 'Ini', '2': 72},
    const {'1': 'J', '2': 51},
    const {'1': 'JSON', '2': 75},
    const {'1': 'Java', '2': 6},
    const {'1': 'JavaScript', '2': 22},
    const {'1': 'JavaScriptReact', '2': 93},
    const {'1': 'Jsonnet', '2': 76},
    const {'1': 'Julia', '2': 55},
    const {'1': 'Kotlin', '2': 4},
    const {'1': 'LaTeX', '2': 83},
    const {'1': 'Lean', '2': 48},
    const {'1': 'Less', '2': 27},
    const {'1': 'Lua', '2': 12},
    const {'1': 'Makefile', '2': 79},
    const {'1': 'Markdown', '2': 84},
    const {'1': 'Matlab', '2': 52},
    const {'1': 'Nix', '2': 77},
    const {'1': 'OCaml', '2': 41},
    const {'1': 'Objective_C', '2': 36},
    const {'1': 'Objective_CPP', '2': 37},
    const {'1': 'PHP', '2': 19},
    const {'1': 'PLSQL', '2': 70},
    const {'1': 'Perl', '2': 13},
    const {'1': 'PowerShell', '2': 67},
    const {'1': 'Prolog', '2': 71},
    const {'1': 'Python', '2': 15},
    const {'1': 'R', '2': 54},
    const {'1': 'Racket', '2': 11},
    const {'1': 'Raku', '2': 14},
    const {'1': 'Razor', '2': 62},
    const {'1': 'ReST', '2': 85},
    const {'1': 'Ruby', '2': 16},
    const {'1': 'Rust', '2': 40},
    const {'1': 'SAS', '2': 61},
    const {'1': 'SCSS', '2': 29},
    const {'1': 'SML', '2': 43},
    const {'1': 'SQL', '2': 69},
    const {'1': 'Sass', '2': 28},
    const {'1': 'Scala', '2': 5},
    const {'1': 'Scheme', '2': 10},
    const {'1': 'ShellScript', '2': 64},
    const {'1': 'Skylark', '2': 78},
    const {'1': 'Swift', '2': 2},
    const {'1': 'TOML', '2': 73},
    const {'1': 'TeX', '2': 82},
    const {'1': 'TypeScript', '2': 23},
    const {'1': 'TypeScriptReact', '2': 94},
    const {'1': 'VisualBasic', '2': 63},
    const {'1': 'Vue', '2': 25},
    const {'1': 'Wolfram', '2': 53},
    const {'1': 'XML', '2': 31},
    const {'1': 'XSL', '2': 32},
    const {'1': 'YAML', '2': 74},
    const {'1': 'Zig', '2': 38},
  ],
};

/// Descriptor for `Language`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List languageDescriptor = $convert.base64Decode('CghMYW5ndWFnZRIXChNVbnNwZWNpZmllZExhbmd1YWdlEAASCAoEQUJBUBA8EgcKA0FQTBAxEgcKA0FkYRAnEggKBEFnZGEQLRIMCghBc2NpaURvYxBWEgwKCEFzc2VtYmx5EDoSBwoDQXdrEEISBwoDQmF0EEQSCgoGQmliVGVYEFESBQoBQxAiEgkKBUNPQk9MEDsSBwoDQ1BQECMSBwoDQ1NTEBoSCgoGQ1NoYXJwEAESCwoHQ2xvanVyZRAIEhAKDENvZmZlZXNjcmlwdBAVEg4KCkNvbW1vbkxpc3AQCRIHCgNDb3EQLxIICgREYXJ0EAMSCgoGRGVscGhpEDkSCAoERGlmZhBYEg4KCkRvY2tlcmZpbGUQUBIKCgZEeWFsb2cQMhIKCgZFbGl4aXIQERIKCgZFcmxhbmcQEhIKCgZGU2hhcnAQKhIICgRGaXNoEEESCAoERmxvdxAYEgsKB0ZvcnRyYW4QOBIOCgpHaXRfQ29tbWl0EFsSDgoKR2l0X0NvbmZpZxBZEg4KCkdpdF9SZWJhc2UQXBIGCgJHbxAhEgoKBkdyb292eRAHEggKBEhUTUwQHhIICgRIYWNrEBQSDgoKSGFuZGxlYmFycxBaEgsKB0hhc2tlbGwQLBIJCgVJZHJpcxAuEgcKA0luaRBIEgUKAUoQMxIICgRKU09OEEsSCAoESmF2YRAGEg4KCkphdmFTY3JpcHQQFhITCg9KYXZhU2NyaXB0UmVhY3QQXRILCgdKc29ubmV0EEwSCQoFSnVsaWEQNxIKCgZLb3RsaW4QBBIJCgVMYVRlWBBTEggKBExlYW4QMBIICgRMZXNzEBsSBwoDTHVhEAwSDAoITWFrZWZpbGUQTxIMCghNYXJrZG93bhBUEgoKBk1hdGxhYhA0EgcKA05peBBNEgkKBU9DYW1sECkSDwoLT2JqZWN0aXZlX0MQJBIRCg1PYmplY3RpdmVfQ1BQECUSBwoDUEhQEBMSCQoFUExTUUwQRhIICgRQZXJsEA0SDgoKUG93ZXJTaGVsbBBDEgoKBlByb2xvZxBHEgoKBlB5dGhvbhAPEgUKAVIQNhIKCgZSYWNrZXQQCxIICgRSYWt1EA4SCQoFUmF6b3IQPhIICgRSZVNUEFUSCAoEUnVieRAQEggKBFJ1c3QQKBIHCgNTQVMQPRIICgRTQ1NTEB0SBwoDU01MECsSBwoDU1FMEEUSCAoEU2FzcxAcEgkKBVNjYWxhEAUSCgoGU2NoZW1lEAoSDwoLU2hlbGxTY3JpcHQQQBILCgdTa3lsYXJrEE4SCQoFU3dpZnQQAhIICgRUT01MEEkSBwoDVGVYEFISDgoKVHlwZVNjcmlwdBAXEhMKD1R5cGVTY3JpcHRSZWFjdBBeEg8KC1Zpc3VhbEJhc2ljED8SBwoDVnVlEBkSCwoHV29sZnJhbRA1EgcKA1hNTBAfEgcKA1hTTBAgEggKBFlBTUwQShIHCgNaaWcQJg==');
@$core.Deprecated('Use indexDescriptor instead')
const Index$json = const {
  '1': 'Index',
  '2': const [
    const {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.scip.Metadata', '10': 'metadata'},
    const {'1': 'documents', '3': 2, '4': 3, '5': 11, '6': '.scip.Document', '10': 'documents'},
    const {'1': 'external_symbols', '3': 3, '4': 3, '5': 11, '6': '.scip.SymbolInformation', '10': 'externalSymbols'},
  ],
};

/// Descriptor for `Index`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List indexDescriptor = $convert.base64Decode('CgVJbmRleBIqCghtZXRhZGF0YRgBIAEoCzIOLnNjaXAuTWV0YWRhdGFSCG1ldGFkYXRhEiwKCWRvY3VtZW50cxgCIAMoCzIOLnNjaXAuRG9jdW1lbnRSCWRvY3VtZW50cxJCChBleHRlcm5hbF9zeW1ib2xzGAMgAygLMhcuc2NpcC5TeW1ib2xJbmZvcm1hdGlvblIPZXh0ZXJuYWxTeW1ib2xz');
@$core.Deprecated('Use metadataDescriptor instead')
const Metadata$json = const {
  '1': 'Metadata',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 14, '6': '.scip.ProtocolVersion', '10': 'version'},
    const {'1': 'tool_info', '3': 2, '4': 1, '5': 11, '6': '.scip.ToolInfo', '10': 'toolInfo'},
    const {'1': 'project_root', '3': 3, '4': 1, '5': 9, '10': 'projectRoot'},
    const {'1': 'text_document_encoding', '3': 4, '4': 1, '5': 14, '6': '.scip.TextEncoding', '10': 'textDocumentEncoding'},
  ],
};

/// Descriptor for `Metadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metadataDescriptor = $convert.base64Decode('CghNZXRhZGF0YRIvCgd2ZXJzaW9uGAEgASgOMhUuc2NpcC5Qcm90b2NvbFZlcnNpb25SB3ZlcnNpb24SKwoJdG9vbF9pbmZvGAIgASgLMg4uc2NpcC5Ub29sSW5mb1IIdG9vbEluZm8SIQoMcHJvamVjdF9yb290GAMgASgJUgtwcm9qZWN0Um9vdBJIChZ0ZXh0X2RvY3VtZW50X2VuY29kaW5nGAQgASgOMhIuc2NpcC5UZXh0RW5jb2RpbmdSFHRleHREb2N1bWVudEVuY29kaW5n');
@$core.Deprecated('Use toolInfoDescriptor instead')
const ToolInfo$json = const {
  '1': 'ToolInfo',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'arguments', '3': 3, '4': 3, '5': 9, '10': 'arguments'},
  ],
};

/// Descriptor for `ToolInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List toolInfoDescriptor = $convert.base64Decode('CghUb29sSW5mbxISCgRuYW1lGAEgASgJUgRuYW1lEhgKB3ZlcnNpb24YAiABKAlSB3ZlcnNpb24SHAoJYXJndW1lbnRzGAMgAygJUglhcmd1bWVudHM=');
@$core.Deprecated('Use documentDescriptor instead')
const Document$json = const {
  '1': 'Document',
  '2': const [
    const {'1': 'language', '3': 4, '4': 1, '5': 9, '10': 'language'},
    const {'1': 'relative_path', '3': 1, '4': 1, '5': 9, '10': 'relativePath'},
    const {'1': 'occurrences', '3': 2, '4': 3, '5': 11, '6': '.scip.Occurrence', '10': 'occurrences'},
    const {'1': 'symbols', '3': 3, '4': 3, '5': 11, '6': '.scip.SymbolInformation', '10': 'symbols'},
  ],
};

/// Descriptor for `Document`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentDescriptor = $convert.base64Decode('CghEb2N1bWVudBIaCghsYW5ndWFnZRgEIAEoCVIIbGFuZ3VhZ2USIwoNcmVsYXRpdmVfcGF0aBgBIAEoCVIMcmVsYXRpdmVQYXRoEjIKC29jY3VycmVuY2VzGAIgAygLMhAuc2NpcC5PY2N1cnJlbmNlUgtvY2N1cnJlbmNlcxIxCgdzeW1ib2xzGAMgAygLMhcuc2NpcC5TeW1ib2xJbmZvcm1hdGlvblIHc3ltYm9scw==');
@$core.Deprecated('Use symbolDescriptor instead')
const Symbol$json = const {
  '1': 'Symbol',
  '2': const [
    const {'1': 'scheme', '3': 1, '4': 1, '5': 9, '10': 'scheme'},
    const {'1': 'package', '3': 2, '4': 1, '5': 11, '6': '.scip.Package', '10': 'package'},
    const {'1': 'descriptors', '3': 3, '4': 3, '5': 11, '6': '.scip.Descriptor', '10': 'descriptors'},
  ],
};

/// Descriptor for `Symbol`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List symbolDescriptor = $convert.base64Decode('CgZTeW1ib2wSFgoGc2NoZW1lGAEgASgJUgZzY2hlbWUSJwoHcGFja2FnZRgCIAEoCzINLnNjaXAuUGFja2FnZVIHcGFja2FnZRIyCgtkZXNjcmlwdG9ycxgDIAMoCzIQLnNjaXAuRGVzY3JpcHRvclILZGVzY3JpcHRvcnM=');
@$core.Deprecated('Use packageDescriptor instead')
const Package$json = const {
  '1': 'Package',
  '2': const [
    const {'1': 'manager', '3': 1, '4': 1, '5': 9, '10': 'manager'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `Package`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packageDescriptor = $convert.base64Decode('CgdQYWNrYWdlEhgKB21hbmFnZXIYASABKAlSB21hbmFnZXISEgoEbmFtZRgCIAEoCVIEbmFtZRIYCgd2ZXJzaW9uGAMgASgJUgd2ZXJzaW9u');
@$core.Deprecated('Use descriptorDescriptor instead')
const Descriptor$json = const {
  '1': 'Descriptor',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'disambiguator', '3': 2, '4': 1, '5': 9, '10': 'disambiguator'},
    const {'1': 'suffix', '3': 3, '4': 1, '5': 14, '6': '.scip.Descriptor.Suffix', '10': 'suffix'},
  ],
  '4': const [Descriptor_Suffix$json],
};

@$core.Deprecated('Use descriptorDescriptor instead')
const Descriptor_Suffix$json = const {
  '1': 'Suffix',
  '2': const [
    const {'1': 'UnspecifiedSuffix', '2': 0},
    const {'1': 'Namespace', '2': 1},
    const {
      '1': 'Package',
      '2': 1,
      '3': const {'1': true},
    },
    const {'1': 'Type', '2': 2},
    const {'1': 'Term', '2': 3},
    const {'1': 'Method', '2': 4},
    const {'1': 'TypeParameter', '2': 5},
    const {'1': 'Parameter', '2': 6},
    const {'1': 'Macro', '2': 9},
    const {'1': 'Meta', '2': 7},
    const {'1': 'Local', '2': 8},
  ],
  '3': const {'2': true},
};

/// Descriptor for `Descriptor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List descriptorDescriptor = $convert.base64Decode('CgpEZXNjcmlwdG9yEhIKBG5hbWUYASABKAlSBG5hbWUSJAoNZGlzYW1iaWd1YXRvchgCIAEoCVINZGlzYW1iaWd1YXRvchIvCgZzdWZmaXgYAyABKA4yFy5zY2lwLkRlc2NyaXB0b3IuU3VmZml4UgZzdWZmaXgipQEKBlN1ZmZpeBIVChFVbnNwZWNpZmllZFN1ZmZpeBAAEg0KCU5hbWVzcGFjZRABEg8KB1BhY2thZ2UQARoCCAESCAoEVHlwZRACEggKBFRlcm0QAxIKCgZNZXRob2QQBBIRCg1UeXBlUGFyYW1ldGVyEAUSDQoJUGFyYW1ldGVyEAYSCQoFTWFjcm8QCRIICgRNZXRhEAcSCQoFTG9jYWwQCBoCEAE=');
@$core.Deprecated('Use symbolInformationDescriptor instead')
const SymbolInformation$json = const {
  '1': 'SymbolInformation',
  '2': const [
    const {'1': 'symbol', '3': 1, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'documentation', '3': 3, '4': 3, '5': 9, '10': 'documentation'},
    const {'1': 'relationships', '3': 4, '4': 3, '5': 11, '6': '.scip.Relationship', '10': 'relationships'},
  ],
};

/// Descriptor for `SymbolInformation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List symbolInformationDescriptor = $convert.base64Decode('ChFTeW1ib2xJbmZvcm1hdGlvbhIWCgZzeW1ib2wYASABKAlSBnN5bWJvbBIkCg1kb2N1bWVudGF0aW9uGAMgAygJUg1kb2N1bWVudGF0aW9uEjgKDXJlbGF0aW9uc2hpcHMYBCADKAsyEi5zY2lwLlJlbGF0aW9uc2hpcFINcmVsYXRpb25zaGlwcw==');
@$core.Deprecated('Use relationshipDescriptor instead')
const Relationship$json = const {
  '1': 'Relationship',
  '2': const [
    const {'1': 'symbol', '3': 1, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'is_reference', '3': 2, '4': 1, '5': 8, '10': 'isReference'},
    const {'1': 'is_implementation', '3': 3, '4': 1, '5': 8, '10': 'isImplementation'},
    const {'1': 'is_type_definition', '3': 4, '4': 1, '5': 8, '10': 'isTypeDefinition'},
    const {'1': 'is_definition', '3': 5, '4': 1, '5': 8, '10': 'isDefinition'},
  ],
};

/// Descriptor for `Relationship`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List relationshipDescriptor = $convert.base64Decode('CgxSZWxhdGlvbnNoaXASFgoGc3ltYm9sGAEgASgJUgZzeW1ib2wSIQoMaXNfcmVmZXJlbmNlGAIgASgIUgtpc1JlZmVyZW5jZRIrChFpc19pbXBsZW1lbnRhdGlvbhgDIAEoCFIQaXNJbXBsZW1lbnRhdGlvbhIsChJpc190eXBlX2RlZmluaXRpb24YBCABKAhSEGlzVHlwZURlZmluaXRpb24SIwoNaXNfZGVmaW5pdGlvbhgFIAEoCFIMaXNEZWZpbml0aW9u');
@$core.Deprecated('Use occurrenceDescriptor instead')
const Occurrence$json = const {
  '1': 'Occurrence',
  '2': const [
    const {'1': 'range', '3': 1, '4': 3, '5': 5, '10': 'range'},
    const {'1': 'symbol', '3': 2, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'symbol_roles', '3': 3, '4': 1, '5': 5, '10': 'symbolRoles'},
    const {'1': 'override_documentation', '3': 4, '4': 3, '5': 9, '10': 'overrideDocumentation'},
    const {'1': 'syntax_kind', '3': 5, '4': 1, '5': 14, '6': '.scip.SyntaxKind', '10': 'syntaxKind'},
    const {'1': 'diagnostics', '3': 6, '4': 3, '5': 11, '6': '.scip.Diagnostic', '10': 'diagnostics'},
  ],
};

/// Descriptor for `Occurrence`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List occurrenceDescriptor = $convert.base64Decode('CgpPY2N1cnJlbmNlEhQKBXJhbmdlGAEgAygFUgVyYW5nZRIWCgZzeW1ib2wYAiABKAlSBnN5bWJvbBIhCgxzeW1ib2xfcm9sZXMYAyABKAVSC3N5bWJvbFJvbGVzEjUKFm92ZXJyaWRlX2RvY3VtZW50YXRpb24YBCADKAlSFW92ZXJyaWRlRG9jdW1lbnRhdGlvbhIxCgtzeW50YXhfa2luZBgFIAEoDjIQLnNjaXAuU3ludGF4S2luZFIKc3ludGF4S2luZBIyCgtkaWFnbm9zdGljcxgGIAMoCzIQLnNjaXAuRGlhZ25vc3RpY1ILZGlhZ25vc3RpY3M=');
@$core.Deprecated('Use diagnosticDescriptor instead')
const Diagnostic$json = const {
  '1': 'Diagnostic',
  '2': const [
    const {'1': 'severity', '3': 1, '4': 1, '5': 14, '6': '.scip.Severity', '10': 'severity'},
    const {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'source', '3': 4, '4': 1, '5': 9, '10': 'source'},
    const {'1': 'tags', '3': 5, '4': 3, '5': 14, '6': '.scip.DiagnosticTag', '10': 'tags'},
  ],
};

/// Descriptor for `Diagnostic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List diagnosticDescriptor = $convert.base64Decode('CgpEaWFnbm9zdGljEioKCHNldmVyaXR5GAEgASgOMg4uc2NpcC5TZXZlcml0eVIIc2V2ZXJpdHkSEgoEY29kZRgCIAEoCVIEY29kZRIYCgdtZXNzYWdlGAMgASgJUgdtZXNzYWdlEhYKBnNvdXJjZRgEIAEoCVIGc291cmNlEicKBHRhZ3MYBSADKA4yEy5zY2lwLkRpYWdub3N0aWNUYWdSBHRhZ3M=');
