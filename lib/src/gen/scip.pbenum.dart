///
//  Generated code. Do not modify.
//  source: scip.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ProtocolVersion extends $pb.ProtobufEnum {
  static const ProtocolVersion UnspecifiedProtocolVersion = ProtocolVersion._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UnspecifiedProtocolVersion');

  static const $core.List<ProtocolVersion> values = <ProtocolVersion> [
    UnspecifiedProtocolVersion,
  ];

  static final $core.Map<$core.int, ProtocolVersion> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ProtocolVersion? valueOf($core.int value) => _byValue[value];

  const ProtocolVersion._($core.int v, $core.String n) : super(v, n);
}

class TextEncoding extends $pb.ProtobufEnum {
  static const TextEncoding UnspecifiedTextEncoding = TextEncoding._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UnspecifiedTextEncoding');
  static const TextEncoding UTF8 = TextEncoding._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UTF8');
  static const TextEncoding UTF16 = TextEncoding._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UTF16');

  static const $core.List<TextEncoding> values = <TextEncoding> [
    UnspecifiedTextEncoding,
    UTF8,
    UTF16,
  ];

  static final $core.Map<$core.int, TextEncoding> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TextEncoding? valueOf($core.int value) => _byValue[value];

  const TextEncoding._($core.int v, $core.String n) : super(v, n);
}

class SymbolRole extends $pb.ProtobufEnum {
  static const SymbolRole UnspecifiedSymbolRole = SymbolRole._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UnspecifiedSymbolRole');
  static const SymbolRole Definition = SymbolRole._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Definition');
  static const SymbolRole Import = SymbolRole._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Import');
  static const SymbolRole WriteAccess = SymbolRole._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WriteAccess');
  static const SymbolRole ReadAccess = SymbolRole._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ReadAccess');
  static const SymbolRole Generated = SymbolRole._(16, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Generated');
  static const SymbolRole Test = SymbolRole._(32, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Test');

  static const $core.List<SymbolRole> values = <SymbolRole> [
    UnspecifiedSymbolRole,
    Definition,
    Import,
    WriteAccess,
    ReadAccess,
    Generated,
    Test,
  ];

  static final $core.Map<$core.int, SymbolRole> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SymbolRole? valueOf($core.int value) => _byValue[value];

  const SymbolRole._($core.int v, $core.String n) : super(v, n);
}

class SyntaxKind extends $pb.ProtobufEnum {
  static const SyntaxKind UnspecifiedSyntaxKind = SyntaxKind._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UnspecifiedSyntaxKind');
  static const SyntaxKind Comment = SyntaxKind._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Comment');
  static const SyntaxKind PunctuationDelimiter = SyntaxKind._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PunctuationDelimiter');
  static const SyntaxKind PunctuationBracket = SyntaxKind._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PunctuationBracket');
  static const SyntaxKind Keyword = SyntaxKind._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Keyword');
  static const SyntaxKind IdentifierOperator = SyntaxKind._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IdentifierOperator');
  static const SyntaxKind Identifier = SyntaxKind._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Identifier');
  static const SyntaxKind IdentifierBuiltin = SyntaxKind._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IdentifierBuiltin');
  static const SyntaxKind IdentifierNull = SyntaxKind._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IdentifierNull');
  static const SyntaxKind IdentifierConstant = SyntaxKind._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IdentifierConstant');
  static const SyntaxKind IdentifierMutableGlobal = SyntaxKind._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IdentifierMutableGlobal');
  static const SyntaxKind IdentifierParameter = SyntaxKind._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IdentifierParameter');
  static const SyntaxKind IdentifierLocal = SyntaxKind._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IdentifierLocal');
  static const SyntaxKind IdentifierShadowed = SyntaxKind._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IdentifierShadowed');
  static const SyntaxKind IdentifierNamespace = SyntaxKind._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IdentifierNamespace');
  static const SyntaxKind IdentifierFunction = SyntaxKind._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IdentifierFunction');
  static const SyntaxKind IdentifierFunctionDefinition = SyntaxKind._(16, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IdentifierFunctionDefinition');
  static const SyntaxKind IdentifierMacro = SyntaxKind._(17, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IdentifierMacro');
  static const SyntaxKind IdentifierMacroDefinition = SyntaxKind._(18, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IdentifierMacroDefinition');
  static const SyntaxKind IdentifierType = SyntaxKind._(19, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IdentifierType');
  static const SyntaxKind IdentifierBuiltinType = SyntaxKind._(20, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IdentifierBuiltinType');
  static const SyntaxKind IdentifierAttribute = SyntaxKind._(21, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IdentifierAttribute');
  static const SyntaxKind RegexEscape = SyntaxKind._(22, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RegexEscape');
  static const SyntaxKind RegexRepeated = SyntaxKind._(23, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RegexRepeated');
  static const SyntaxKind RegexWildcard = SyntaxKind._(24, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RegexWildcard');
  static const SyntaxKind RegexDelimiter = SyntaxKind._(25, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RegexDelimiter');
  static const SyntaxKind RegexJoin = SyntaxKind._(26, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RegexJoin');
  static const SyntaxKind StringLiteral = SyntaxKind._(27, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'StringLiteral');
  static const SyntaxKind StringLiteralEscape = SyntaxKind._(28, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'StringLiteralEscape');
  static const SyntaxKind StringLiteralSpecial = SyntaxKind._(29, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'StringLiteralSpecial');
  static const SyntaxKind StringLiteralKey = SyntaxKind._(30, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'StringLiteralKey');
  static const SyntaxKind CharacterLiteral = SyntaxKind._(31, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CharacterLiteral');
  static const SyntaxKind NumericLiteral = SyntaxKind._(32, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NumericLiteral');
  static const SyntaxKind BooleanLiteral = SyntaxKind._(33, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BooleanLiteral');
  static const SyntaxKind Tag = SyntaxKind._(34, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Tag');
  static const SyntaxKind TagAttribute = SyntaxKind._(35, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TagAttribute');
  static const SyntaxKind TagDelimiter = SyntaxKind._(36, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TagDelimiter');

  static const SyntaxKind IdentifierKeyword = Keyword;
  static const SyntaxKind IdentifierModule = IdentifierNamespace;

  static const $core.List<SyntaxKind> values = <SyntaxKind> [
    UnspecifiedSyntaxKind,
    Comment,
    PunctuationDelimiter,
    PunctuationBracket,
    Keyword,
    IdentifierOperator,
    Identifier,
    IdentifierBuiltin,
    IdentifierNull,
    IdentifierConstant,
    IdentifierMutableGlobal,
    IdentifierParameter,
    IdentifierLocal,
    IdentifierShadowed,
    IdentifierNamespace,
    IdentifierFunction,
    IdentifierFunctionDefinition,
    IdentifierMacro,
    IdentifierMacroDefinition,
    IdentifierType,
    IdentifierBuiltinType,
    IdentifierAttribute,
    RegexEscape,
    RegexRepeated,
    RegexWildcard,
    RegexDelimiter,
    RegexJoin,
    StringLiteral,
    StringLiteralEscape,
    StringLiteralSpecial,
    StringLiteralKey,
    CharacterLiteral,
    NumericLiteral,
    BooleanLiteral,
    Tag,
    TagAttribute,
    TagDelimiter,
  ];

  static final $core.Map<$core.int, SyntaxKind> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SyntaxKind? valueOf($core.int value) => _byValue[value];

  const SyntaxKind._($core.int v, $core.String n) : super(v, n);
}

class Severity extends $pb.ProtobufEnum {
  static const Severity UnspecifiedSeverity = Severity._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UnspecifiedSeverity');
  static const Severity Error = Severity._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Error');
  static const Severity Warning = Severity._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Warning');
  static const Severity Information = Severity._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Information');
  static const Severity Hint = Severity._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Hint');

  static const $core.List<Severity> values = <Severity> [
    UnspecifiedSeverity,
    Error,
    Warning,
    Information,
    Hint,
  ];

  static final $core.Map<$core.int, Severity> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Severity? valueOf($core.int value) => _byValue[value];

  const Severity._($core.int v, $core.String n) : super(v, n);
}

class DiagnosticTag extends $pb.ProtobufEnum {
  static const DiagnosticTag UnspecifiedDiagnosticTag = DiagnosticTag._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UnspecifiedDiagnosticTag');
  static const DiagnosticTag Unnecessary = DiagnosticTag._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Unnecessary');
  static const DiagnosticTag Deprecated = DiagnosticTag._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Deprecated');

  static const $core.List<DiagnosticTag> values = <DiagnosticTag> [
    UnspecifiedDiagnosticTag,
    Unnecessary,
    Deprecated,
  ];

  static final $core.Map<$core.int, DiagnosticTag> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DiagnosticTag? valueOf($core.int value) => _byValue[value];

  const DiagnosticTag._($core.int v, $core.String n) : super(v, n);
}

class Language extends $pb.ProtobufEnum {
  static const Language UnspecifiedLanguage = Language._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UnspecifiedLanguage');
  static const Language ABAP = Language._(60, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ABAP');
  static const Language APL = Language._(49, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'APL');
  static const Language Ada = Language._(39, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Ada');
  static const Language Agda = Language._(45, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Agda');
  static const Language AsciiDoc = Language._(86, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AsciiDoc');
  static const Language Assembly = Language._(58, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Assembly');
  static const Language Awk = Language._(66, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Awk');
  static const Language Bat = Language._(68, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Bat');
  static const Language BibTeX = Language._(81, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BibTeX');
  static const Language C = Language._(34, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'C');
  static const Language COBOL = Language._(59, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'COBOL');
  static const Language CPP = Language._(35, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CPP');
  static const Language CSS = Language._(26, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CSS');
  static const Language CSharp = Language._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CSharp');
  static const Language Clojure = Language._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Clojure');
  static const Language Coffeescript = Language._(21, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Coffeescript');
  static const Language CommonLisp = Language._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CommonLisp');
  static const Language Coq = Language._(47, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Coq');
  static const Language Dart = Language._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Dart');
  static const Language Delphi = Language._(57, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Delphi');
  static const Language Diff = Language._(88, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Diff');
  static const Language Dockerfile = Language._(80, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Dockerfile');
  static const Language Dyalog = Language._(50, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Dyalog');
  static const Language Elixir = Language._(17, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Elixir');
  static const Language Erlang = Language._(18, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Erlang');
  static const Language FSharp = Language._(42, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FSharp');
  static const Language Fish = Language._(65, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Fish');
  static const Language Flow = Language._(24, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Flow');
  static const Language Fortran = Language._(56, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Fortran');
  static const Language Git_Commit = Language._(91, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Git_Commit');
  static const Language Git_Config = Language._(89, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Git_Config');
  static const Language Git_Rebase = Language._(92, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Git_Rebase');
  static const Language Go = Language._(33, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Go');
  static const Language Groovy = Language._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Groovy');
  static const Language HTML = Language._(30, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HTML');
  static const Language Hack = Language._(20, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Hack');
  static const Language Handlebars = Language._(90, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Handlebars');
  static const Language Haskell = Language._(44, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Haskell');
  static const Language Idris = Language._(46, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Idris');
  static const Language Ini = Language._(72, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Ini');
  static const Language J = Language._(51, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'J');
  static const Language JSON = Language._(75, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'JSON');
  static const Language Java = Language._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Java');
  static const Language JavaScript = Language._(22, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'JavaScript');
  static const Language JavaScriptReact = Language._(93, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'JavaScriptReact');
  static const Language Jsonnet = Language._(76, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Jsonnet');
  static const Language Julia = Language._(55, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Julia');
  static const Language Kotlin = Language._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Kotlin');
  static const Language LaTeX = Language._(83, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LaTeX');
  static const Language Lean = Language._(48, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Lean');
  static const Language Less = Language._(27, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Less');
  static const Language Lua = Language._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Lua');
  static const Language Makefile = Language._(79, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Makefile');
  static const Language Markdown = Language._(84, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Markdown');
  static const Language Matlab = Language._(52, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Matlab');
  static const Language Nix = Language._(77, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Nix');
  static const Language OCaml = Language._(41, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OCaml');
  static const Language Objective_C = Language._(36, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Objective_C');
  static const Language Objective_CPP = Language._(37, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Objective_CPP');
  static const Language PHP = Language._(19, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PHP');
  static const Language PLSQL = Language._(70, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PLSQL');
  static const Language Perl = Language._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Perl');
  static const Language PowerShell = Language._(67, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PowerShell');
  static const Language Prolog = Language._(71, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Prolog');
  static const Language Python = Language._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Python');
  static const Language R = Language._(54, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'R');
  static const Language Racket = Language._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Racket');
  static const Language Raku = Language._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Raku');
  static const Language Razor = Language._(62, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Razor');
  static const Language ReST = Language._(85, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ReST');
  static const Language Ruby = Language._(16, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Ruby');
  static const Language Rust = Language._(40, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Rust');
  static const Language SAS = Language._(61, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SAS');
  static const Language SCSS = Language._(29, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SCSS');
  static const Language SML = Language._(43, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SML');
  static const Language SQL = Language._(69, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SQL');
  static const Language Sass = Language._(28, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Sass');
  static const Language Scala = Language._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Scala');
  static const Language Scheme = Language._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Scheme');
  static const Language ShellScript = Language._(64, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ShellScript');
  static const Language Skylark = Language._(78, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Skylark');
  static const Language Swift = Language._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Swift');
  static const Language TOML = Language._(73, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TOML');
  static const Language TeX = Language._(82, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TeX');
  static const Language TypeScript = Language._(23, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TypeScript');
  static const Language TypeScriptReact = Language._(94, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TypeScriptReact');
  static const Language VisualBasic = Language._(63, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VisualBasic');
  static const Language Vue = Language._(25, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Vue');
  static const Language Wolfram = Language._(53, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Wolfram');
  static const Language XML = Language._(31, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'XML');
  static const Language XSL = Language._(32, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'XSL');
  static const Language YAML = Language._(74, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'YAML');
  static const Language Zig = Language._(38, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Zig');

  static const $core.List<Language> values = <Language> [
    UnspecifiedLanguage,
    ABAP,
    APL,
    Ada,
    Agda,
    AsciiDoc,
    Assembly,
    Awk,
    Bat,
    BibTeX,
    C,
    COBOL,
    CPP,
    CSS,
    CSharp,
    Clojure,
    Coffeescript,
    CommonLisp,
    Coq,
    Dart,
    Delphi,
    Diff,
    Dockerfile,
    Dyalog,
    Elixir,
    Erlang,
    FSharp,
    Fish,
    Flow,
    Fortran,
    Git_Commit,
    Git_Config,
    Git_Rebase,
    Go,
    Groovy,
    HTML,
    Hack,
    Handlebars,
    Haskell,
    Idris,
    Ini,
    J,
    JSON,
    Java,
    JavaScript,
    JavaScriptReact,
    Jsonnet,
    Julia,
    Kotlin,
    LaTeX,
    Lean,
    Less,
    Lua,
    Makefile,
    Markdown,
    Matlab,
    Nix,
    OCaml,
    Objective_C,
    Objective_CPP,
    PHP,
    PLSQL,
    Perl,
    PowerShell,
    Prolog,
    Python,
    R,
    Racket,
    Raku,
    Razor,
    ReST,
    Ruby,
    Rust,
    SAS,
    SCSS,
    SML,
    SQL,
    Sass,
    Scala,
    Scheme,
    ShellScript,
    Skylark,
    Swift,
    TOML,
    TeX,
    TypeScript,
    TypeScriptReact,
    VisualBasic,
    Vue,
    Wolfram,
    XML,
    XSL,
    YAML,
    Zig,
  ];

  static final $core.Map<$core.int, Language> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Language? valueOf($core.int value) => _byValue[value];

  const Language._($core.int v, $core.String n) : super(v, n);
}

class Descriptor_Suffix extends $pb.ProtobufEnum {
  static const Descriptor_Suffix UnspecifiedSuffix = Descriptor_Suffix._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UnspecifiedSuffix');
  static const Descriptor_Suffix Namespace = Descriptor_Suffix._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Namespace');
  static const Descriptor_Suffix Type = Descriptor_Suffix._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Type');
  static const Descriptor_Suffix Term = Descriptor_Suffix._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Term');
  static const Descriptor_Suffix Method = Descriptor_Suffix._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Method');
  static const Descriptor_Suffix TypeParameter = Descriptor_Suffix._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TypeParameter');
  static const Descriptor_Suffix Parameter = Descriptor_Suffix._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Parameter');
  static const Descriptor_Suffix Macro = Descriptor_Suffix._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Macro');
  static const Descriptor_Suffix Meta = Descriptor_Suffix._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Meta');
  static const Descriptor_Suffix Local = Descriptor_Suffix._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Local');

  static const Descriptor_Suffix Package = Namespace;

  static const $core.List<Descriptor_Suffix> values = <Descriptor_Suffix> [
    UnspecifiedSuffix,
    Namespace,
    Type,
    Term,
    Method,
    TypeParameter,
    Parameter,
    Macro,
    Meta,
    Local,
  ];

  static final $core.Map<$core.int, Descriptor_Suffix> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Descriptor_Suffix? valueOf($core.int value) => _byValue[value];

  const Descriptor_Suffix._($core.int v, $core.String n) : super(v, n);
}

