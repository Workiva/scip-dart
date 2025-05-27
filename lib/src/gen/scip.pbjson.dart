//
//  Generated code. Do not modify.
//  source: lib/src/gen/scip.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use protocolVersionDescriptor instead')
const ProtocolVersion$json = {
  '1': 'ProtocolVersion',
  '2': [
    {'1': 'UnspecifiedProtocolVersion', '2': 0},
  ],
};

/// Descriptor for `ProtocolVersion`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List protocolVersionDescriptor = $convert.base64Decode(
    'Cg9Qcm90b2NvbFZlcnNpb24SHgoaVW5zcGVjaWZpZWRQcm90b2NvbFZlcnNpb24QAA==');

@$core.Deprecated('Use textEncodingDescriptor instead')
const TextEncoding$json = {
  '1': 'TextEncoding',
  '2': [
    {'1': 'UnspecifiedTextEncoding', '2': 0},
    {'1': 'UTF8', '2': 1},
    {'1': 'UTF16', '2': 2},
  ],
};

/// Descriptor for `TextEncoding`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List textEncodingDescriptor = $convert.base64Decode(
    'CgxUZXh0RW5jb2RpbmcSGwoXVW5zcGVjaWZpZWRUZXh0RW5jb2RpbmcQABIICgRVVEY4EAESCQ'
    'oFVVRGMTYQAg==');

@$core.Deprecated('Use positionEncodingDescriptor instead')
const PositionEncoding$json = {
  '1': 'PositionEncoding',
  '2': [
    {'1': 'UnspecifiedPositionEncoding', '2': 0},
    {'1': 'UTF8CodeUnitOffsetFromLineStart', '2': 1},
    {'1': 'UTF16CodeUnitOffsetFromLineStart', '2': 2},
    {'1': 'UTF32CodeUnitOffsetFromLineStart', '2': 3},
  ],
};

/// Descriptor for `PositionEncoding`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List positionEncodingDescriptor = $convert.base64Decode(
    'ChBQb3NpdGlvbkVuY29kaW5nEh8KG1Vuc3BlY2lmaWVkUG9zaXRpb25FbmNvZGluZxAAEiMKH1'
    'VURjhDb2RlVW5pdE9mZnNldEZyb21MaW5lU3RhcnQQARIkCiBVVEYxNkNvZGVVbml0T2Zmc2V0'
    'RnJvbUxpbmVTdGFydBACEiQKIFVURjMyQ29kZVVuaXRPZmZzZXRGcm9tTGluZVN0YXJ0EAM=');

@$core.Deprecated('Use symbolRoleDescriptor instead')
const SymbolRole$json = {
  '1': 'SymbolRole',
  '2': [
    {'1': 'UnspecifiedSymbolRole', '2': 0},
    {'1': 'Definition', '2': 1},
    {'1': 'Import', '2': 2},
    {'1': 'WriteAccess', '2': 4},
    {'1': 'ReadAccess', '2': 8},
    {'1': 'Generated', '2': 16},
    {'1': 'Test', '2': 32},
    {'1': 'ForwardDefinition', '2': 64},
  ],
};

/// Descriptor for `SymbolRole`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List symbolRoleDescriptor = $convert.base64Decode(
    'CgpTeW1ib2xSb2xlEhkKFVVuc3BlY2lmaWVkU3ltYm9sUm9sZRAAEg4KCkRlZmluaXRpb24QAR'
    'IKCgZJbXBvcnQQAhIPCgtXcml0ZUFjY2VzcxAEEg4KClJlYWRBY2Nlc3MQCBINCglHZW5lcmF0'
    'ZWQQEBIICgRUZXN0ECASFQoRRm9yd2FyZERlZmluaXRpb24QQA==');

@$core.Deprecated('Use syntaxKindDescriptor instead')
const SyntaxKind$json = {
  '1': 'SyntaxKind',
  '2': [
    {'1': 'UnspecifiedSyntaxKind', '2': 0},
    {'1': 'Comment', '2': 1},
    {'1': 'PunctuationDelimiter', '2': 2},
    {'1': 'PunctuationBracket', '2': 3},
    {'1': 'Keyword', '2': 4},
    {
      '1': 'IdentifierKeyword',
      '2': 4,
      '3': {'1': true},
    },
    {'1': 'IdentifierOperator', '2': 5},
    {'1': 'Identifier', '2': 6},
    {'1': 'IdentifierBuiltin', '2': 7},
    {'1': 'IdentifierNull', '2': 8},
    {'1': 'IdentifierConstant', '2': 9},
    {'1': 'IdentifierMutableGlobal', '2': 10},
    {'1': 'IdentifierParameter', '2': 11},
    {'1': 'IdentifierLocal', '2': 12},
    {'1': 'IdentifierShadowed', '2': 13},
    {'1': 'IdentifierNamespace', '2': 14},
    {
      '1': 'IdentifierModule',
      '2': 14,
      '3': {'1': true},
    },
    {'1': 'IdentifierFunction', '2': 15},
    {'1': 'IdentifierFunctionDefinition', '2': 16},
    {'1': 'IdentifierMacro', '2': 17},
    {'1': 'IdentifierMacroDefinition', '2': 18},
    {'1': 'IdentifierType', '2': 19},
    {'1': 'IdentifierBuiltinType', '2': 20},
    {'1': 'IdentifierAttribute', '2': 21},
    {'1': 'RegexEscape', '2': 22},
    {'1': 'RegexRepeated', '2': 23},
    {'1': 'RegexWildcard', '2': 24},
    {'1': 'RegexDelimiter', '2': 25},
    {'1': 'RegexJoin', '2': 26},
    {'1': 'StringLiteral', '2': 27},
    {'1': 'StringLiteralEscape', '2': 28},
    {'1': 'StringLiteralSpecial', '2': 29},
    {'1': 'StringLiteralKey', '2': 30},
    {'1': 'CharacterLiteral', '2': 31},
    {'1': 'NumericLiteral', '2': 32},
    {'1': 'BooleanLiteral', '2': 33},
    {'1': 'Tag', '2': 34},
    {'1': 'TagAttribute', '2': 35},
    {'1': 'TagDelimiter', '2': 36},
  ],
  '3': {'2': true},
};

/// Descriptor for `SyntaxKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List syntaxKindDescriptor = $convert.base64Decode(
    'CgpTeW50YXhLaW5kEhkKFVVuc3BlY2lmaWVkU3ludGF4S2luZBAAEgsKB0NvbW1lbnQQARIYCh'
    'RQdW5jdHVhdGlvbkRlbGltaXRlchACEhYKElB1bmN0dWF0aW9uQnJhY2tldBADEgsKB0tleXdv'
    'cmQQBBIZChFJZGVudGlmaWVyS2V5d29yZBAEGgIIARIWChJJZGVudGlmaWVyT3BlcmF0b3IQBR'
    'IOCgpJZGVudGlmaWVyEAYSFQoRSWRlbnRpZmllckJ1aWx0aW4QBxISCg5JZGVudGlmaWVyTnVs'
    'bBAIEhYKEklkZW50aWZpZXJDb25zdGFudBAJEhsKF0lkZW50aWZpZXJNdXRhYmxlR2xvYmFsEA'
    'oSFwoTSWRlbnRpZmllclBhcmFtZXRlchALEhMKD0lkZW50aWZpZXJMb2NhbBAMEhYKEklkZW50'
    'aWZpZXJTaGFkb3dlZBANEhcKE0lkZW50aWZpZXJOYW1lc3BhY2UQDhIYChBJZGVudGlmaWVyTW'
    '9kdWxlEA4aAggBEhYKEklkZW50aWZpZXJGdW5jdGlvbhAPEiAKHElkZW50aWZpZXJGdW5jdGlv'
    'bkRlZmluaXRpb24QEBITCg9JZGVudGlmaWVyTWFjcm8QERIdChlJZGVudGlmaWVyTWFjcm9EZW'
    'Zpbml0aW9uEBISEgoOSWRlbnRpZmllclR5cGUQExIZChVJZGVudGlmaWVyQnVpbHRpblR5cGUQ'
    'FBIXChNJZGVudGlmaWVyQXR0cmlidXRlEBUSDwoLUmVnZXhFc2NhcGUQFhIRCg1SZWdleFJlcG'
    'VhdGVkEBcSEQoNUmVnZXhXaWxkY2FyZBAYEhIKDlJlZ2V4RGVsaW1pdGVyEBkSDQoJUmVnZXhK'
    'b2luEBoSEQoNU3RyaW5nTGl0ZXJhbBAbEhcKE1N0cmluZ0xpdGVyYWxFc2NhcGUQHBIYChRTdH'
    'JpbmdMaXRlcmFsU3BlY2lhbBAdEhQKEFN0cmluZ0xpdGVyYWxLZXkQHhIUChBDaGFyYWN0ZXJM'
    'aXRlcmFsEB8SEgoOTnVtZXJpY0xpdGVyYWwQIBISCg5Cb29sZWFuTGl0ZXJhbBAhEgcKA1RhZx'
    'AiEhAKDFRhZ0F0dHJpYnV0ZRAjEhAKDFRhZ0RlbGltaXRlchAkGgIQAQ==');

@$core.Deprecated('Use severityDescriptor instead')
const Severity$json = {
  '1': 'Severity',
  '2': [
    {'1': 'UnspecifiedSeverity', '2': 0},
    {'1': 'Error', '2': 1},
    {'1': 'Warning', '2': 2},
    {'1': 'Information', '2': 3},
    {'1': 'Hint', '2': 4},
  ],
};

/// Descriptor for `Severity`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List severityDescriptor = $convert.base64Decode(
    'CghTZXZlcml0eRIXChNVbnNwZWNpZmllZFNldmVyaXR5EAASCQoFRXJyb3IQARILCgdXYXJuaW'
    '5nEAISDwoLSW5mb3JtYXRpb24QAxIICgRIaW50EAQ=');

@$core.Deprecated('Use diagnosticTagDescriptor instead')
const DiagnosticTag$json = {
  '1': 'DiagnosticTag',
  '2': [
    {'1': 'UnspecifiedDiagnosticTag', '2': 0},
    {'1': 'Unnecessary', '2': 1},
    {'1': 'Deprecated', '2': 2},
  ],
};

/// Descriptor for `DiagnosticTag`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List diagnosticTagDescriptor = $convert.base64Decode(
    'Cg1EaWFnbm9zdGljVGFnEhwKGFVuc3BlY2lmaWVkRGlhZ25vc3RpY1RhZxAAEg8KC1VubmVjZX'
    'NzYXJ5EAESDgoKRGVwcmVjYXRlZBAC');

@$core.Deprecated('Use languageDescriptor instead')
const Language$json = {
  '1': 'Language',
  '2': [
    {'1': 'UnspecifiedLanguage', '2': 0},
    {'1': 'ABAP', '2': 60},
    {'1': 'Apex', '2': 96},
    {'1': 'APL', '2': 49},
    {'1': 'Ada', '2': 39},
    {'1': 'Agda', '2': 45},
    {'1': 'AsciiDoc', '2': 86},
    {'1': 'Assembly', '2': 58},
    {'1': 'Awk', '2': 66},
    {'1': 'Bat', '2': 68},
    {'1': 'BibTeX', '2': 81},
    {'1': 'C', '2': 34},
    {'1': 'COBOL', '2': 59},
    {'1': 'CPP', '2': 35},
    {'1': 'CSS', '2': 26},
    {'1': 'CSharp', '2': 1},
    {'1': 'Clojure', '2': 8},
    {'1': 'Coffeescript', '2': 21},
    {'1': 'CommonLisp', '2': 9},
    {'1': 'Coq', '2': 47},
    {'1': 'CUDA', '2': 97},
    {'1': 'Dart', '2': 3},
    {'1': 'Delphi', '2': 57},
    {'1': 'Diff', '2': 88},
    {'1': 'Dockerfile', '2': 80},
    {'1': 'Dyalog', '2': 50},
    {'1': 'Elixir', '2': 17},
    {'1': 'Erlang', '2': 18},
    {'1': 'FSharp', '2': 42},
    {'1': 'Fish', '2': 65},
    {'1': 'Flow', '2': 24},
    {'1': 'Fortran', '2': 56},
    {'1': 'Git_Commit', '2': 91},
    {'1': 'Git_Config', '2': 89},
    {'1': 'Git_Rebase', '2': 92},
    {'1': 'Go', '2': 33},
    {'1': 'GraphQL', '2': 98},
    {'1': 'Groovy', '2': 7},
    {'1': 'HTML', '2': 30},
    {'1': 'Hack', '2': 20},
    {'1': 'Handlebars', '2': 90},
    {'1': 'Haskell', '2': 44},
    {'1': 'Idris', '2': 46},
    {'1': 'Ini', '2': 72},
    {'1': 'J', '2': 51},
    {'1': 'JSON', '2': 75},
    {'1': 'Java', '2': 6},
    {'1': 'JavaScript', '2': 22},
    {'1': 'JavaScriptReact', '2': 93},
    {'1': 'Jsonnet', '2': 76},
    {'1': 'Julia', '2': 55},
    {'1': 'Justfile', '2': 109},
    {'1': 'Kotlin', '2': 4},
    {'1': 'LaTeX', '2': 83},
    {'1': 'Lean', '2': 48},
    {'1': 'Less', '2': 27},
    {'1': 'Lua', '2': 12},
    {'1': 'Luau', '2': 108},
    {'1': 'Makefile', '2': 79},
    {'1': 'Markdown', '2': 84},
    {'1': 'Matlab', '2': 52},
    {'1': 'Nickel', '2': 110},
    {'1': 'Nix', '2': 77},
    {'1': 'OCaml', '2': 41},
    {'1': 'Objective_C', '2': 36},
    {'1': 'Objective_CPP', '2': 37},
    {'1': 'Pascal', '2': 99},
    {'1': 'PHP', '2': 19},
    {'1': 'PLSQL', '2': 70},
    {'1': 'Perl', '2': 13},
    {'1': 'PowerShell', '2': 67},
    {'1': 'Prolog', '2': 71},
    {'1': 'Protobuf', '2': 100},
    {'1': 'Python', '2': 15},
    {'1': 'R', '2': 54},
    {'1': 'Racket', '2': 11},
    {'1': 'Raku', '2': 14},
    {'1': 'Razor', '2': 62},
    {'1': 'Repro', '2': 102},
    {'1': 'ReST', '2': 85},
    {'1': 'Ruby', '2': 16},
    {'1': 'Rust', '2': 40},
    {'1': 'SAS', '2': 61},
    {'1': 'SCSS', '2': 29},
    {'1': 'SML', '2': 43},
    {'1': 'SQL', '2': 69},
    {'1': 'Sass', '2': 28},
    {'1': 'Scala', '2': 5},
    {'1': 'Scheme', '2': 10},
    {'1': 'ShellScript', '2': 64},
    {'1': 'Skylark', '2': 78},
    {'1': 'Slang', '2': 107},
    {'1': 'Solidity', '2': 95},
    {'1': 'Svelte', '2': 106},
    {'1': 'Swift', '2': 2},
    {'1': 'Tcl', '2': 101},
    {'1': 'TOML', '2': 73},
    {'1': 'TeX', '2': 82},
    {'1': 'Thrift', '2': 103},
    {'1': 'TypeScript', '2': 23},
    {'1': 'TypeScriptReact', '2': 94},
    {'1': 'Verilog', '2': 104},
    {'1': 'VHDL', '2': 105},
    {'1': 'VisualBasic', '2': 63},
    {'1': 'Vue', '2': 25},
    {'1': 'Wolfram', '2': 53},
    {'1': 'XML', '2': 31},
    {'1': 'XSL', '2': 32},
    {'1': 'YAML', '2': 74},
    {'1': 'Zig', '2': 38},
  ],
};

/// Descriptor for `Language`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List languageDescriptor = $convert.base64Decode(
    'CghMYW5ndWFnZRIXChNVbnNwZWNpZmllZExhbmd1YWdlEAASCAoEQUJBUBA8EggKBEFwZXgQYB'
    'IHCgNBUEwQMRIHCgNBZGEQJxIICgRBZ2RhEC0SDAoIQXNjaWlEb2MQVhIMCghBc3NlbWJseRA6'
    'EgcKA0F3axBCEgcKA0JhdBBEEgoKBkJpYlRlWBBREgUKAUMQIhIJCgVDT0JPTBA7EgcKA0NQUB'
    'AjEgcKA0NTUxAaEgoKBkNTaGFycBABEgsKB0Nsb2p1cmUQCBIQCgxDb2ZmZWVzY3JpcHQQFRIO'
    'CgpDb21tb25MaXNwEAkSBwoDQ29xEC8SCAoEQ1VEQRBhEggKBERhcnQQAxIKCgZEZWxwaGkQOR'
    'IICgREaWZmEFgSDgoKRG9ja2VyZmlsZRBQEgoKBkR5YWxvZxAyEgoKBkVsaXhpchAREgoKBkVy'
    'bGFuZxASEgoKBkZTaGFycBAqEggKBEZpc2gQQRIICgRGbG93EBgSCwoHRm9ydHJhbhA4Eg4KCk'
    'dpdF9Db21taXQQWxIOCgpHaXRfQ29uZmlnEFkSDgoKR2l0X1JlYmFzZRBcEgYKAkdvECESCwoH'
    'R3JhcGhRTBBiEgoKBkdyb292eRAHEggKBEhUTUwQHhIICgRIYWNrEBQSDgoKSGFuZGxlYmFycx'
    'BaEgsKB0hhc2tlbGwQLBIJCgVJZHJpcxAuEgcKA0luaRBIEgUKAUoQMxIICgRKU09OEEsSCAoE'
    'SmF2YRAGEg4KCkphdmFTY3JpcHQQFhITCg9KYXZhU2NyaXB0UmVhY3QQXRILCgdKc29ubmV0EE'
    'wSCQoFSnVsaWEQNxIMCghKdXN0ZmlsZRBtEgoKBktvdGxpbhAEEgkKBUxhVGVYEFMSCAoETGVh'
    'bhAwEggKBExlc3MQGxIHCgNMdWEQDBIICgRMdWF1EGwSDAoITWFrZWZpbGUQTxIMCghNYXJrZG'
    '93bhBUEgoKBk1hdGxhYhA0EgoKBk5pY2tlbBBuEgcKA05peBBNEgkKBU9DYW1sECkSDwoLT2Jq'
    'ZWN0aXZlX0MQJBIRCg1PYmplY3RpdmVfQ1BQECUSCgoGUGFzY2FsEGMSBwoDUEhQEBMSCQoFUE'
    'xTUUwQRhIICgRQZXJsEA0SDgoKUG93ZXJTaGVsbBBDEgoKBlByb2xvZxBHEgwKCFByb3RvYnVm'
    'EGQSCgoGUHl0aG9uEA8SBQoBUhA2EgoKBlJhY2tldBALEggKBFJha3UQDhIJCgVSYXpvchA+Eg'
    'kKBVJlcHJvEGYSCAoEUmVTVBBVEggKBFJ1YnkQEBIICgRSdXN0ECgSBwoDU0FTED0SCAoEU0NT'
    'UxAdEgcKA1NNTBArEgcKA1NRTBBFEggKBFNhc3MQHBIJCgVTY2FsYRAFEgoKBlNjaGVtZRAKEg'
    '8KC1NoZWxsU2NyaXB0EEASCwoHU2t5bGFyaxBOEgkKBVNsYW5nEGsSDAoIU29saWRpdHkQXxIK'
    'CgZTdmVsdGUQahIJCgVTd2lmdBACEgcKA1RjbBBlEggKBFRPTUwQSRIHCgNUZVgQUhIKCgZUaH'
    'JpZnQQZxIOCgpUeXBlU2NyaXB0EBcSEwoPVHlwZVNjcmlwdFJlYWN0EF4SCwoHVmVyaWxvZxBo'
    'EggKBFZIREwQaRIPCgtWaXN1YWxCYXNpYxA/EgcKA1Z1ZRAZEgsKB1dvbGZyYW0QNRIHCgNYTU'
    'wQHxIHCgNYU0wQIBIICgRZQU1MEEoSBwoDWmlnECY=');

@$core.Deprecated('Use indexDescriptor instead')
const Index$json = {
  '1': 'Index',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.scip.Metadata', '10': 'metadata'},
    {'1': 'documents', '3': 2, '4': 3, '5': 11, '6': '.scip.Document', '10': 'documents'},
    {'1': 'external_symbols', '3': 3, '4': 3, '5': 11, '6': '.scip.SymbolInformation', '10': 'externalSymbols'},
  ],
};

/// Descriptor for `Index`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List indexDescriptor = $convert.base64Decode(
    'CgVJbmRleBIqCghtZXRhZGF0YRgBIAEoCzIOLnNjaXAuTWV0YWRhdGFSCG1ldGFkYXRhEiwKCW'
    'RvY3VtZW50cxgCIAMoCzIOLnNjaXAuRG9jdW1lbnRSCWRvY3VtZW50cxJCChBleHRlcm5hbF9z'
    'eW1ib2xzGAMgAygLMhcuc2NpcC5TeW1ib2xJbmZvcm1hdGlvblIPZXh0ZXJuYWxTeW1ib2xz');

@$core.Deprecated('Use metadataDescriptor instead')
const Metadata$json = {
  '1': 'Metadata',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 14, '6': '.scip.ProtocolVersion', '10': 'version'},
    {'1': 'tool_info', '3': 2, '4': 1, '5': 11, '6': '.scip.ToolInfo', '10': 'toolInfo'},
    {'1': 'project_root', '3': 3, '4': 1, '5': 9, '10': 'projectRoot'},
    {'1': 'text_document_encoding', '3': 4, '4': 1, '5': 14, '6': '.scip.TextEncoding', '10': 'textDocumentEncoding'},
  ],
};

/// Descriptor for `Metadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metadataDescriptor = $convert.base64Decode(
    'CghNZXRhZGF0YRIvCgd2ZXJzaW9uGAEgASgOMhUuc2NpcC5Qcm90b2NvbFZlcnNpb25SB3Zlcn'
    'Npb24SKwoJdG9vbF9pbmZvGAIgASgLMg4uc2NpcC5Ub29sSW5mb1IIdG9vbEluZm8SIQoMcHJv'
    'amVjdF9yb290GAMgASgJUgtwcm9qZWN0Um9vdBJIChZ0ZXh0X2RvY3VtZW50X2VuY29kaW5nGA'
    'QgASgOMhIuc2NpcC5UZXh0RW5jb2RpbmdSFHRleHREb2N1bWVudEVuY29kaW5n');

@$core.Deprecated('Use toolInfoDescriptor instead')
const ToolInfo$json = {
  '1': 'ToolInfo',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    {'1': 'arguments', '3': 3, '4': 3, '5': 9, '10': 'arguments'},
  ],
};

/// Descriptor for `ToolInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List toolInfoDescriptor = $convert.base64Decode(
    'CghUb29sSW5mbxISCgRuYW1lGAEgASgJUgRuYW1lEhgKB3ZlcnNpb24YAiABKAlSB3ZlcnNpb2'
    '4SHAoJYXJndW1lbnRzGAMgAygJUglhcmd1bWVudHM=');

@$core.Deprecated('Use documentDescriptor instead')
const Document$json = {
  '1': 'Document',
  '2': [
    {'1': 'language', '3': 4, '4': 1, '5': 9, '10': 'language'},
    {'1': 'relative_path', '3': 1, '4': 1, '5': 9, '10': 'relativePath'},
    {'1': 'occurrences', '3': 2, '4': 3, '5': 11, '6': '.scip.Occurrence', '10': 'occurrences'},
    {'1': 'symbols', '3': 3, '4': 3, '5': 11, '6': '.scip.SymbolInformation', '10': 'symbols'},
    {'1': 'text', '3': 5, '4': 1, '5': 9, '10': 'text'},
    {'1': 'position_encoding', '3': 6, '4': 1, '5': 14, '6': '.scip.PositionEncoding', '10': 'positionEncoding'},
  ],
};

/// Descriptor for `Document`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentDescriptor = $convert.base64Decode(
    'CghEb2N1bWVudBIaCghsYW5ndWFnZRgEIAEoCVIIbGFuZ3VhZ2USIwoNcmVsYXRpdmVfcGF0aB'
    'gBIAEoCVIMcmVsYXRpdmVQYXRoEjIKC29jY3VycmVuY2VzGAIgAygLMhAuc2NpcC5PY2N1cnJl'
    'bmNlUgtvY2N1cnJlbmNlcxIxCgdzeW1ib2xzGAMgAygLMhcuc2NpcC5TeW1ib2xJbmZvcm1hdG'
    'lvblIHc3ltYm9scxISCgR0ZXh0GAUgASgJUgR0ZXh0EkMKEXBvc2l0aW9uX2VuY29kaW5nGAYg'
    'ASgOMhYuc2NpcC5Qb3NpdGlvbkVuY29kaW5nUhBwb3NpdGlvbkVuY29kaW5n');

@$core.Deprecated('Use symbolDescriptor instead')
const Symbol$json = {
  '1': 'Symbol',
  '2': [
    {'1': 'scheme', '3': 1, '4': 1, '5': 9, '10': 'scheme'},
    {'1': 'package', '3': 2, '4': 1, '5': 11, '6': '.scip.Package', '10': 'package'},
    {'1': 'descriptors', '3': 3, '4': 3, '5': 11, '6': '.scip.Descriptor', '10': 'descriptors'},
  ],
};

/// Descriptor for `Symbol`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List symbolDescriptor = $convert.base64Decode(
    'CgZTeW1ib2wSFgoGc2NoZW1lGAEgASgJUgZzY2hlbWUSJwoHcGFja2FnZRgCIAEoCzINLnNjaX'
    'AuUGFja2FnZVIHcGFja2FnZRIyCgtkZXNjcmlwdG9ycxgDIAMoCzIQLnNjaXAuRGVzY3JpcHRv'
    'clILZGVzY3JpcHRvcnM=');

@$core.Deprecated('Use packageDescriptor instead')
const Package$json = {
  '1': 'Package',
  '2': [
    {'1': 'manager', '3': 1, '4': 1, '5': 9, '10': 'manager'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `Package`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packageDescriptor = $convert.base64Decode(
    'CgdQYWNrYWdlEhgKB21hbmFnZXIYASABKAlSB21hbmFnZXISEgoEbmFtZRgCIAEoCVIEbmFtZR'
    'IYCgd2ZXJzaW9uGAMgASgJUgd2ZXJzaW9u');

@$core.Deprecated('Use descriptorDescriptor instead')
const Descriptor$json = {
  '1': 'Descriptor',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'disambiguator', '3': 2, '4': 1, '5': 9, '10': 'disambiguator'},
    {'1': 'suffix', '3': 3, '4': 1, '5': 14, '6': '.scip.Descriptor.Suffix', '10': 'suffix'},
  ],
  '4': [Descriptor_Suffix$json],
};

@$core.Deprecated('Use descriptorDescriptor instead')
const Descriptor_Suffix$json = {
  '1': 'Suffix',
  '2': [
    {'1': 'UnspecifiedSuffix', '2': 0},
    {'1': 'Namespace', '2': 1},
    {
      '1': 'Package',
      '2': 1,
      '3': {'1': true},
    },
    {'1': 'Type', '2': 2},
    {'1': 'Term', '2': 3},
    {'1': 'Method', '2': 4},
    {'1': 'TypeParameter', '2': 5},
    {'1': 'Parameter', '2': 6},
    {'1': 'Meta', '2': 7},
    {'1': 'Local', '2': 8},
    {'1': 'Macro', '2': 9},
  ],
  '3': {'2': true},
};

/// Descriptor for `Descriptor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List descriptorDescriptor = $convert.base64Decode(
    'CgpEZXNjcmlwdG9yEhIKBG5hbWUYASABKAlSBG5hbWUSJAoNZGlzYW1iaWd1YXRvchgCIAEoCV'
    'INZGlzYW1iaWd1YXRvchIvCgZzdWZmaXgYAyABKA4yFy5zY2lwLkRlc2NyaXB0b3IuU3VmZml4'
    'UgZzdWZmaXgipQEKBlN1ZmZpeBIVChFVbnNwZWNpZmllZFN1ZmZpeBAAEg0KCU5hbWVzcGFjZR'
    'ABEg8KB1BhY2thZ2UQARoCCAESCAoEVHlwZRACEggKBFRlcm0QAxIKCgZNZXRob2QQBBIRCg1U'
    'eXBlUGFyYW1ldGVyEAUSDQoJUGFyYW1ldGVyEAYSCAoETWV0YRAHEgkKBUxvY2FsEAgSCQoFTW'
    'Fjcm8QCRoCEAE=');

@$core.Deprecated('Use symbolInformationDescriptor instead')
const SymbolInformation$json = {
  '1': 'SymbolInformation',
  '2': [
    {'1': 'symbol', '3': 1, '4': 1, '5': 9, '10': 'symbol'},
    {'1': 'documentation', '3': 3, '4': 3, '5': 9, '10': 'documentation'},
    {'1': 'relationships', '3': 4, '4': 3, '5': 11, '6': '.scip.Relationship', '10': 'relationships'},
    {'1': 'kind', '3': 5, '4': 1, '5': 14, '6': '.scip.SymbolInformation.Kind', '10': 'kind'},
    {'1': 'display_name', '3': 6, '4': 1, '5': 9, '10': 'displayName'},
    {'1': 'signature_documentation', '3': 7, '4': 1, '5': 11, '6': '.scip.Document', '10': 'signatureDocumentation'},
    {'1': 'enclosing_symbol', '3': 8, '4': 1, '5': 9, '10': 'enclosingSymbol'},
  ],
  '4': [SymbolInformation_Kind$json],
};

@$core.Deprecated('Use symbolInformationDescriptor instead')
const SymbolInformation_Kind$json = {
  '1': 'Kind',
  '2': [
    {'1': 'UnspecifiedKind', '2': 0},
    {'1': 'AbstractMethod', '2': 66},
    {'1': 'Accessor', '2': 72},
    {'1': 'Array', '2': 1},
    {'1': 'Assertion', '2': 2},
    {'1': 'AssociatedType', '2': 3},
    {'1': 'Attribute', '2': 4},
    {'1': 'Axiom', '2': 5},
    {'1': 'Boolean', '2': 6},
    {'1': 'Class', '2': 7},
    {'1': 'Constant', '2': 8},
    {'1': 'Constructor', '2': 9},
    {'1': 'Contract', '2': 62},
    {'1': 'DataFamily', '2': 10},
    {'1': 'Delegate', '2': 73},
    {'1': 'Enum', '2': 11},
    {'1': 'EnumMember', '2': 12},
    {'1': 'Error', '2': 63},
    {'1': 'Event', '2': 13},
    {'1': 'Extension', '2': 84},
    {'1': 'Fact', '2': 14},
    {'1': 'Field', '2': 15},
    {'1': 'File', '2': 16},
    {'1': 'Function', '2': 17},
    {'1': 'Getter', '2': 18},
    {'1': 'Grammar', '2': 19},
    {'1': 'Instance', '2': 20},
    {'1': 'Interface', '2': 21},
    {'1': 'Key', '2': 22},
    {'1': 'Lang', '2': 23},
    {'1': 'Lemma', '2': 24},
    {'1': 'Library', '2': 64},
    {'1': 'Macro', '2': 25},
    {'1': 'Method', '2': 26},
    {'1': 'MethodAlias', '2': 74},
    {'1': 'MethodReceiver', '2': 27},
    {'1': 'MethodSpecification', '2': 67},
    {'1': 'Message', '2': 28},
    {'1': 'Mixin', '2': 85},
    {'1': 'Modifier', '2': 65},
    {'1': 'Module', '2': 29},
    {'1': 'Namespace', '2': 30},
    {'1': 'Null', '2': 31},
    {'1': 'Number', '2': 32},
    {'1': 'Object', '2': 33},
    {'1': 'Operator', '2': 34},
    {'1': 'Package', '2': 35},
    {'1': 'PackageObject', '2': 36},
    {'1': 'Parameter', '2': 37},
    {'1': 'ParameterLabel', '2': 38},
    {'1': 'Pattern', '2': 39},
    {'1': 'Predicate', '2': 40},
    {'1': 'Property', '2': 41},
    {'1': 'Protocol', '2': 42},
    {'1': 'ProtocolMethod', '2': 68},
    {'1': 'PureVirtualMethod', '2': 69},
    {'1': 'Quasiquoter', '2': 43},
    {'1': 'SelfParameter', '2': 44},
    {'1': 'Setter', '2': 45},
    {'1': 'Signature', '2': 46},
    {'1': 'SingletonClass', '2': 75},
    {'1': 'SingletonMethod', '2': 76},
    {'1': 'StaticDataMember', '2': 77},
    {'1': 'StaticEvent', '2': 78},
    {'1': 'StaticField', '2': 79},
    {'1': 'StaticMethod', '2': 80},
    {'1': 'StaticProperty', '2': 81},
    {'1': 'StaticVariable', '2': 82},
    {'1': 'String', '2': 48},
    {'1': 'Struct', '2': 49},
    {'1': 'Subscript', '2': 47},
    {'1': 'Tactic', '2': 50},
    {'1': 'Theorem', '2': 51},
    {'1': 'ThisParameter', '2': 52},
    {'1': 'Trait', '2': 53},
    {'1': 'TraitMethod', '2': 70},
    {'1': 'Type', '2': 54},
    {'1': 'TypeAlias', '2': 55},
    {'1': 'TypeClass', '2': 56},
    {'1': 'TypeClassMethod', '2': 71},
    {'1': 'TypeFamily', '2': 57},
    {'1': 'TypeParameter', '2': 58},
    {'1': 'Union', '2': 59},
    {'1': 'Value', '2': 60},
    {'1': 'Variable', '2': 61},
  ],
};

/// Descriptor for `SymbolInformation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List symbolInformationDescriptor = $convert.base64Decode(
    'ChFTeW1ib2xJbmZvcm1hdGlvbhIWCgZzeW1ib2wYASABKAlSBnN5bWJvbBIkCg1kb2N1bWVudG'
    'F0aW9uGAMgAygJUg1kb2N1bWVudGF0aW9uEjgKDXJlbGF0aW9uc2hpcHMYBCADKAsyEi5zY2lw'
    'LlJlbGF0aW9uc2hpcFINcmVsYXRpb25zaGlwcxIwCgRraW5kGAUgASgOMhwuc2NpcC5TeW1ib2'
    'xJbmZvcm1hdGlvbi5LaW5kUgRraW5kEiEKDGRpc3BsYXlfbmFtZRgGIAEoCVILZGlzcGxheU5h'
    'bWUSRwoXc2lnbmF0dXJlX2RvY3VtZW50YXRpb24YByABKAsyDi5zY2lwLkRvY3VtZW50UhZzaW'
    'duYXR1cmVEb2N1bWVudGF0aW9uEikKEGVuY2xvc2luZ19zeW1ib2wYCCABKAlSD2VuY2xvc2lu'
    'Z1N5bWJvbCLuCQoES2luZBITCg9VbnNwZWNpZmllZEtpbmQQABISCg5BYnN0cmFjdE1ldGhvZB'
    'BCEgwKCEFjY2Vzc29yEEgSCQoFQXJyYXkQARINCglBc3NlcnRpb24QAhISCg5Bc3NvY2lhdGVk'
    'VHlwZRADEg0KCUF0dHJpYnV0ZRAEEgkKBUF4aW9tEAUSCwoHQm9vbGVhbhAGEgkKBUNsYXNzEA'
    'cSDAoIQ29uc3RhbnQQCBIPCgtDb25zdHJ1Y3RvchAJEgwKCENvbnRyYWN0ED4SDgoKRGF0YUZh'
    'bWlseRAKEgwKCERlbGVnYXRlEEkSCAoERW51bRALEg4KCkVudW1NZW1iZXIQDBIJCgVFcnJvch'
    'A/EgkKBUV2ZW50EA0SDQoJRXh0ZW5zaW9uEFQSCAoERmFjdBAOEgkKBUZpZWxkEA8SCAoERmls'
    'ZRAQEgwKCEZ1bmN0aW9uEBESCgoGR2V0dGVyEBISCwoHR3JhbW1hchATEgwKCEluc3RhbmNlEB'
    'QSDQoJSW50ZXJmYWNlEBUSBwoDS2V5EBYSCAoETGFuZxAXEgkKBUxlbW1hEBgSCwoHTGlicmFy'
    'eRBAEgkKBU1hY3JvEBkSCgoGTWV0aG9kEBoSDwoLTWV0aG9kQWxpYXMQShISCg5NZXRob2RSZW'
    'NlaXZlchAbEhcKE01ldGhvZFNwZWNpZmljYXRpb24QQxILCgdNZXNzYWdlEBwSCQoFTWl4aW4Q'
    'VRIMCghNb2RpZmllchBBEgoKBk1vZHVsZRAdEg0KCU5hbWVzcGFjZRAeEggKBE51bGwQHxIKCg'
    'ZOdW1iZXIQIBIKCgZPYmplY3QQIRIMCghPcGVyYXRvchAiEgsKB1BhY2thZ2UQIxIRCg1QYWNr'
    'YWdlT2JqZWN0ECQSDQoJUGFyYW1ldGVyECUSEgoOUGFyYW1ldGVyTGFiZWwQJhILCgdQYXR0ZX'
    'JuECcSDQoJUHJlZGljYXRlECgSDAoIUHJvcGVydHkQKRIMCghQcm90b2NvbBAqEhIKDlByb3Rv'
    'Y29sTWV0aG9kEEQSFQoRUHVyZVZpcnR1YWxNZXRob2QQRRIPCgtRdWFzaXF1b3RlchArEhEKDV'
    'NlbGZQYXJhbWV0ZXIQLBIKCgZTZXR0ZXIQLRINCglTaWduYXR1cmUQLhISCg5TaW5nbGV0b25D'
    'bGFzcxBLEhMKD1NpbmdsZXRvbk1ldGhvZBBMEhQKEFN0YXRpY0RhdGFNZW1iZXIQTRIPCgtTdG'
    'F0aWNFdmVudBBOEg8KC1N0YXRpY0ZpZWxkEE8SEAoMU3RhdGljTWV0aG9kEFASEgoOU3RhdGlj'
    'UHJvcGVydHkQURISCg5TdGF0aWNWYXJpYWJsZRBSEgoKBlN0cmluZxAwEgoKBlN0cnVjdBAxEg'
    '0KCVN1YnNjcmlwdBAvEgoKBlRhY3RpYxAyEgsKB1RoZW9yZW0QMxIRCg1UaGlzUGFyYW1ldGVy'
    'EDQSCQoFVHJhaXQQNRIPCgtUcmFpdE1ldGhvZBBGEggKBFR5cGUQNhINCglUeXBlQWxpYXMQNx'
    'INCglUeXBlQ2xhc3MQOBITCg9UeXBlQ2xhc3NNZXRob2QQRxIOCgpUeXBlRmFtaWx5EDkSEQoN'
    'VHlwZVBhcmFtZXRlchA6EgkKBVVuaW9uEDsSCQoFVmFsdWUQPBIMCghWYXJpYWJsZRA9');

@$core.Deprecated('Use relationshipDescriptor instead')
const Relationship$json = {
  '1': 'Relationship',
  '2': [
    {'1': 'symbol', '3': 1, '4': 1, '5': 9, '10': 'symbol'},
    {'1': 'is_reference', '3': 2, '4': 1, '5': 8, '10': 'isReference'},
    {'1': 'is_implementation', '3': 3, '4': 1, '5': 8, '10': 'isImplementation'},
    {'1': 'is_type_definition', '3': 4, '4': 1, '5': 8, '10': 'isTypeDefinition'},
    {'1': 'is_definition', '3': 5, '4': 1, '5': 8, '10': 'isDefinition'},
  ],
};

/// Descriptor for `Relationship`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List relationshipDescriptor = $convert.base64Decode(
    'CgxSZWxhdGlvbnNoaXASFgoGc3ltYm9sGAEgASgJUgZzeW1ib2wSIQoMaXNfcmVmZXJlbmNlGA'
    'IgASgIUgtpc1JlZmVyZW5jZRIrChFpc19pbXBsZW1lbnRhdGlvbhgDIAEoCFIQaXNJbXBsZW1l'
    'bnRhdGlvbhIsChJpc190eXBlX2RlZmluaXRpb24YBCABKAhSEGlzVHlwZURlZmluaXRpb24SIw'
    'oNaXNfZGVmaW5pdGlvbhgFIAEoCFIMaXNEZWZpbml0aW9u');

@$core.Deprecated('Use occurrenceDescriptor instead')
const Occurrence$json = {
  '1': 'Occurrence',
  '2': [
    {'1': 'range', '3': 1, '4': 3, '5': 5, '10': 'range'},
    {'1': 'symbol', '3': 2, '4': 1, '5': 9, '10': 'symbol'},
    {'1': 'symbol_roles', '3': 3, '4': 1, '5': 5, '10': 'symbolRoles'},
    {'1': 'override_documentation', '3': 4, '4': 3, '5': 9, '10': 'overrideDocumentation'},
    {'1': 'syntax_kind', '3': 5, '4': 1, '5': 14, '6': '.scip.SyntaxKind', '10': 'syntaxKind'},
    {'1': 'diagnostics', '3': 6, '4': 3, '5': 11, '6': '.scip.Diagnostic', '10': 'diagnostics'},
    {'1': 'enclosing_range', '3': 7, '4': 3, '5': 5, '10': 'enclosingRange'},
  ],
};

/// Descriptor for `Occurrence`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List occurrenceDescriptor = $convert.base64Decode(
    'CgpPY2N1cnJlbmNlEhQKBXJhbmdlGAEgAygFUgVyYW5nZRIWCgZzeW1ib2wYAiABKAlSBnN5bW'
    'JvbBIhCgxzeW1ib2xfcm9sZXMYAyABKAVSC3N5bWJvbFJvbGVzEjUKFm92ZXJyaWRlX2RvY3Vt'
    'ZW50YXRpb24YBCADKAlSFW92ZXJyaWRlRG9jdW1lbnRhdGlvbhIxCgtzeW50YXhfa2luZBgFIA'
    'EoDjIQLnNjaXAuU3ludGF4S2luZFIKc3ludGF4S2luZBIyCgtkaWFnbm9zdGljcxgGIAMoCzIQ'
    'LnNjaXAuRGlhZ25vc3RpY1ILZGlhZ25vc3RpY3MSJwoPZW5jbG9zaW5nX3JhbmdlGAcgAygFUg'
    '5lbmNsb3NpbmdSYW5nZQ==');

@$core.Deprecated('Use diagnosticDescriptor instead')
const Diagnostic$json = {
  '1': 'Diagnostic',
  '2': [
    {'1': 'severity', '3': 1, '4': 1, '5': 14, '6': '.scip.Severity', '10': 'severity'},
    {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
    {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    {'1': 'source', '3': 4, '4': 1, '5': 9, '10': 'source'},
    {'1': 'tags', '3': 5, '4': 3, '5': 14, '6': '.scip.DiagnosticTag', '10': 'tags'},
  ],
};

/// Descriptor for `Diagnostic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List diagnosticDescriptor = $convert.base64Decode(
    'CgpEaWFnbm9zdGljEioKCHNldmVyaXR5GAEgASgOMg4uc2NpcC5TZXZlcml0eVIIc2V2ZXJpdH'
    'kSEgoEY29kZRgCIAEoCVIEY29kZRIYCgdtZXNzYWdlGAMgASgJUgdtZXNzYWdlEhYKBnNvdXJj'
    'ZRgEIAEoCVIGc291cmNlEicKBHRhZ3MYBSADKA4yEy5zY2lwLkRpYWdub3N0aWNUYWdSBHRhZ3'
    'M=');

