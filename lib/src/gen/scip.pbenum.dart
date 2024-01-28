//
//  Generated code. Do not modify.
//  source: lib/src/gen/scip.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ProtocolVersion extends $pb.ProtobufEnum {
  static const ProtocolVersion UnspecifiedProtocolVersion = ProtocolVersion._(0, _omitEnumNames ? '' : 'UnspecifiedProtocolVersion');

  static const $core.List<ProtocolVersion> values = <ProtocolVersion> [
    UnspecifiedProtocolVersion,
  ];

  static final $core.Map<$core.int, ProtocolVersion> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ProtocolVersion? valueOf($core.int value) => _byValue[value];

  const ProtocolVersion._($core.int v, $core.String n) : super(v, n);
}

class TextEncoding extends $pb.ProtobufEnum {
  static const TextEncoding UnspecifiedTextEncoding = TextEncoding._(0, _omitEnumNames ? '' : 'UnspecifiedTextEncoding');
  static const TextEncoding UTF8 = TextEncoding._(1, _omitEnumNames ? '' : 'UTF8');
  static const TextEncoding UTF16 = TextEncoding._(2, _omitEnumNames ? '' : 'UTF16');

  static const $core.List<TextEncoding> values = <TextEncoding> [
    UnspecifiedTextEncoding,
    UTF8,
    UTF16,
  ];

  static final $core.Map<$core.int, TextEncoding> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TextEncoding? valueOf($core.int value) => _byValue[value];

  const TextEncoding._($core.int v, $core.String n) : super(v, n);
}

/// Encoding used to interpret the 'character' value in source ranges.
class PositionEncoding extends $pb.ProtobufEnum {
  static const PositionEncoding UnspecifiedPositionEncoding = PositionEncoding._(0, _omitEnumNames ? '' : 'UnspecifiedPositionEncoding');
  static const PositionEncoding UTF8CodeUnitOffsetFromLineStart = PositionEncoding._(1, _omitEnumNames ? '' : 'UTF8CodeUnitOffsetFromLineStart');
  static const PositionEncoding UTF16CodeUnitOffsetFromLineStart = PositionEncoding._(2, _omitEnumNames ? '' : 'UTF16CodeUnitOffsetFromLineStart');
  static const PositionEncoding UTF32CodeUnitOffsetFromLineStart = PositionEncoding._(3, _omitEnumNames ? '' : 'UTF32CodeUnitOffsetFromLineStart');

  static const $core.List<PositionEncoding> values = <PositionEncoding> [
    UnspecifiedPositionEncoding,
    UTF8CodeUnitOffsetFromLineStart,
    UTF16CodeUnitOffsetFromLineStart,
    UTF32CodeUnitOffsetFromLineStart,
  ];

  static final $core.Map<$core.int, PositionEncoding> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PositionEncoding? valueOf($core.int value) => _byValue[value];

  const PositionEncoding._($core.int v, $core.String n) : super(v, n);
}

/// SymbolRole declares what "role" a symbol has in an occurrence. A role is
/// encoded as a bitset where each bit represents a different role. For example,
/// to determine if the `Import` role is set, test whether the second bit of the
/// enum value is defined. In pseudocode, this can be implemented with the
/// logic: `const isImportRole = (role.value & SymbolRole.Import.value) > 0`.
class SymbolRole extends $pb.ProtobufEnum {
  static const SymbolRole UnspecifiedSymbolRole = SymbolRole._(0, _omitEnumNames ? '' : 'UnspecifiedSymbolRole');
  static const SymbolRole Definition = SymbolRole._(1, _omitEnumNames ? '' : 'Definition');
  static const SymbolRole Import = SymbolRole._(2, _omitEnumNames ? '' : 'Import');
  static const SymbolRole WriteAccess = SymbolRole._(4, _omitEnumNames ? '' : 'WriteAccess');
  static const SymbolRole ReadAccess = SymbolRole._(8, _omitEnumNames ? '' : 'ReadAccess');
  static const SymbolRole Generated = SymbolRole._(16, _omitEnumNames ? '' : 'Generated');
  static const SymbolRole Test = SymbolRole._(32, _omitEnumNames ? '' : 'Test');
  static const SymbolRole ForwardDefinition = SymbolRole._(64, _omitEnumNames ? '' : 'ForwardDefinition');

  static const $core.List<SymbolRole> values = <SymbolRole> [
    UnspecifiedSymbolRole,
    Definition,
    Import,
    WriteAccess,
    ReadAccess,
    Generated,
    Test,
    ForwardDefinition,
  ];

  static final $core.Map<$core.int, SymbolRole> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SymbolRole? valueOf($core.int value) => _byValue[value];

  const SymbolRole._($core.int v, $core.String n) : super(v, n);
}

class SyntaxKind extends $pb.ProtobufEnum {
  static const SyntaxKind UnspecifiedSyntaxKind = SyntaxKind._(0, _omitEnumNames ? '' : 'UnspecifiedSyntaxKind');
  static const SyntaxKind Comment = SyntaxKind._(1, _omitEnumNames ? '' : 'Comment');
  static const SyntaxKind PunctuationDelimiter = SyntaxKind._(2, _omitEnumNames ? '' : 'PunctuationDelimiter');
  static const SyntaxKind PunctuationBracket = SyntaxKind._(3, _omitEnumNames ? '' : 'PunctuationBracket');
  static const SyntaxKind Keyword = SyntaxKind._(4, _omitEnumNames ? '' : 'Keyword');
  static const SyntaxKind IdentifierOperator = SyntaxKind._(5, _omitEnumNames ? '' : 'IdentifierOperator');
  static const SyntaxKind Identifier = SyntaxKind._(6, _omitEnumNames ? '' : 'Identifier');
  static const SyntaxKind IdentifierBuiltin = SyntaxKind._(7, _omitEnumNames ? '' : 'IdentifierBuiltin');
  static const SyntaxKind IdentifierNull = SyntaxKind._(8, _omitEnumNames ? '' : 'IdentifierNull');
  static const SyntaxKind IdentifierConstant = SyntaxKind._(9, _omitEnumNames ? '' : 'IdentifierConstant');
  static const SyntaxKind IdentifierMutableGlobal = SyntaxKind._(10, _omitEnumNames ? '' : 'IdentifierMutableGlobal');
  static const SyntaxKind IdentifierParameter = SyntaxKind._(11, _omitEnumNames ? '' : 'IdentifierParameter');
  static const SyntaxKind IdentifierLocal = SyntaxKind._(12, _omitEnumNames ? '' : 'IdentifierLocal');
  static const SyntaxKind IdentifierShadowed = SyntaxKind._(13, _omitEnumNames ? '' : 'IdentifierShadowed');
  static const SyntaxKind IdentifierNamespace = SyntaxKind._(14, _omitEnumNames ? '' : 'IdentifierNamespace');
  static const SyntaxKind IdentifierFunction = SyntaxKind._(15, _omitEnumNames ? '' : 'IdentifierFunction');
  static const SyntaxKind IdentifierFunctionDefinition = SyntaxKind._(16, _omitEnumNames ? '' : 'IdentifierFunctionDefinition');
  static const SyntaxKind IdentifierMacro = SyntaxKind._(17, _omitEnumNames ? '' : 'IdentifierMacro');
  static const SyntaxKind IdentifierMacroDefinition = SyntaxKind._(18, _omitEnumNames ? '' : 'IdentifierMacroDefinition');
  static const SyntaxKind IdentifierType = SyntaxKind._(19, _omitEnumNames ? '' : 'IdentifierType');
  static const SyntaxKind IdentifierBuiltinType = SyntaxKind._(20, _omitEnumNames ? '' : 'IdentifierBuiltinType');
  static const SyntaxKind IdentifierAttribute = SyntaxKind._(21, _omitEnumNames ? '' : 'IdentifierAttribute');
  static const SyntaxKind RegexEscape = SyntaxKind._(22, _omitEnumNames ? '' : 'RegexEscape');
  static const SyntaxKind RegexRepeated = SyntaxKind._(23, _omitEnumNames ? '' : 'RegexRepeated');
  static const SyntaxKind RegexWildcard = SyntaxKind._(24, _omitEnumNames ? '' : 'RegexWildcard');
  static const SyntaxKind RegexDelimiter = SyntaxKind._(25, _omitEnumNames ? '' : 'RegexDelimiter');
  static const SyntaxKind RegexJoin = SyntaxKind._(26, _omitEnumNames ? '' : 'RegexJoin');
  static const SyntaxKind StringLiteral = SyntaxKind._(27, _omitEnumNames ? '' : 'StringLiteral');
  static const SyntaxKind StringLiteralEscape = SyntaxKind._(28, _omitEnumNames ? '' : 'StringLiteralEscape');
  static const SyntaxKind StringLiteralSpecial = SyntaxKind._(29, _omitEnumNames ? '' : 'StringLiteralSpecial');
  static const SyntaxKind StringLiteralKey = SyntaxKind._(30, _omitEnumNames ? '' : 'StringLiteralKey');
  static const SyntaxKind CharacterLiteral = SyntaxKind._(31, _omitEnumNames ? '' : 'CharacterLiteral');
  static const SyntaxKind NumericLiteral = SyntaxKind._(32, _omitEnumNames ? '' : 'NumericLiteral');
  static const SyntaxKind BooleanLiteral = SyntaxKind._(33, _omitEnumNames ? '' : 'BooleanLiteral');
  static const SyntaxKind Tag = SyntaxKind._(34, _omitEnumNames ? '' : 'Tag');
  static const SyntaxKind TagAttribute = SyntaxKind._(35, _omitEnumNames ? '' : 'TagAttribute');
  static const SyntaxKind TagDelimiter = SyntaxKind._(36, _omitEnumNames ? '' : 'TagDelimiter');

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
  static const Severity UnspecifiedSeverity = Severity._(0, _omitEnumNames ? '' : 'UnspecifiedSeverity');
  static const Severity Error = Severity._(1, _omitEnumNames ? '' : 'Error');
  static const Severity Warning = Severity._(2, _omitEnumNames ? '' : 'Warning');
  static const Severity Information = Severity._(3, _omitEnumNames ? '' : 'Information');
  static const Severity Hint = Severity._(4, _omitEnumNames ? '' : 'Hint');

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
  static const DiagnosticTag UnspecifiedDiagnosticTag = DiagnosticTag._(0, _omitEnumNames ? '' : 'UnspecifiedDiagnosticTag');
  static const DiagnosticTag Unnecessary = DiagnosticTag._(1, _omitEnumNames ? '' : 'Unnecessary');
  static const DiagnosticTag Deprecated = DiagnosticTag._(2, _omitEnumNames ? '' : 'Deprecated');

  static const $core.List<DiagnosticTag> values = <DiagnosticTag> [
    UnspecifiedDiagnosticTag,
    Unnecessary,
    Deprecated,
  ];

  static final $core.Map<$core.int, DiagnosticTag> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DiagnosticTag? valueOf($core.int value) => _byValue[value];

  const DiagnosticTag._($core.int v, $core.String n) : super(v, n);
}

/// Language standardises names of common programming languages that can be used
/// for the `Document.language` field. The primary purpose of this enum is to
/// prevent a situation where we have a single programming language ends up with
/// multiple string representations. For example, the C++ language uses the name
/// "CPP" in this enum and other names such as "cpp" are incompatible.
/// Feel free to send a pull-request to add missing programming languages.
class Language extends $pb.ProtobufEnum {
  static const Language UnspecifiedLanguage = Language._(0, _omitEnumNames ? '' : 'UnspecifiedLanguage');
  static const Language ABAP = Language._(60, _omitEnumNames ? '' : 'ABAP');
  static const Language Apex = Language._(96, _omitEnumNames ? '' : 'Apex');
  static const Language APL = Language._(49, _omitEnumNames ? '' : 'APL');
  static const Language Ada = Language._(39, _omitEnumNames ? '' : 'Ada');
  static const Language Agda = Language._(45, _omitEnumNames ? '' : 'Agda');
  static const Language AsciiDoc = Language._(86, _omitEnumNames ? '' : 'AsciiDoc');
  static const Language Assembly = Language._(58, _omitEnumNames ? '' : 'Assembly');
  static const Language Awk = Language._(66, _omitEnumNames ? '' : 'Awk');
  static const Language Bat = Language._(68, _omitEnumNames ? '' : 'Bat');
  static const Language BibTeX = Language._(81, _omitEnumNames ? '' : 'BibTeX');
  static const Language C = Language._(34, _omitEnumNames ? '' : 'C');
  static const Language COBOL = Language._(59, _omitEnumNames ? '' : 'COBOL');
  static const Language CPP = Language._(35, _omitEnumNames ? '' : 'CPP');
  static const Language CSS = Language._(26, _omitEnumNames ? '' : 'CSS');
  static const Language CSharp = Language._(1, _omitEnumNames ? '' : 'CSharp');
  static const Language Clojure = Language._(8, _omitEnumNames ? '' : 'Clojure');
  static const Language Coffeescript = Language._(21, _omitEnumNames ? '' : 'Coffeescript');
  static const Language CommonLisp = Language._(9, _omitEnumNames ? '' : 'CommonLisp');
  static const Language Coq = Language._(47, _omitEnumNames ? '' : 'Coq');
  static const Language CUDA = Language._(97, _omitEnumNames ? '' : 'CUDA');
  static const Language Dart = Language._(3, _omitEnumNames ? '' : 'Dart');
  static const Language Delphi = Language._(57, _omitEnumNames ? '' : 'Delphi');
  static const Language Diff = Language._(88, _omitEnumNames ? '' : 'Diff');
  static const Language Dockerfile = Language._(80, _omitEnumNames ? '' : 'Dockerfile');
  static const Language Dyalog = Language._(50, _omitEnumNames ? '' : 'Dyalog');
  static const Language Elixir = Language._(17, _omitEnumNames ? '' : 'Elixir');
  static const Language Erlang = Language._(18, _omitEnumNames ? '' : 'Erlang');
  static const Language FSharp = Language._(42, _omitEnumNames ? '' : 'FSharp');
  static const Language Fish = Language._(65, _omitEnumNames ? '' : 'Fish');
  static const Language Flow = Language._(24, _omitEnumNames ? '' : 'Flow');
  static const Language Fortran = Language._(56, _omitEnumNames ? '' : 'Fortran');
  static const Language Git_Commit = Language._(91, _omitEnumNames ? '' : 'Git_Commit');
  static const Language Git_Config = Language._(89, _omitEnumNames ? '' : 'Git_Config');
  static const Language Git_Rebase = Language._(92, _omitEnumNames ? '' : 'Git_Rebase');
  static const Language Go = Language._(33, _omitEnumNames ? '' : 'Go');
  static const Language GraphQL = Language._(98, _omitEnumNames ? '' : 'GraphQL');
  static const Language Groovy = Language._(7, _omitEnumNames ? '' : 'Groovy');
  static const Language HTML = Language._(30, _omitEnumNames ? '' : 'HTML');
  static const Language Hack = Language._(20, _omitEnumNames ? '' : 'Hack');
  static const Language Handlebars = Language._(90, _omitEnumNames ? '' : 'Handlebars');
  static const Language Haskell = Language._(44, _omitEnumNames ? '' : 'Haskell');
  static const Language Idris = Language._(46, _omitEnumNames ? '' : 'Idris');
  static const Language Ini = Language._(72, _omitEnumNames ? '' : 'Ini');
  static const Language J = Language._(51, _omitEnumNames ? '' : 'J');
  static const Language JSON = Language._(75, _omitEnumNames ? '' : 'JSON');
  static const Language Java = Language._(6, _omitEnumNames ? '' : 'Java');
  static const Language JavaScript = Language._(22, _omitEnumNames ? '' : 'JavaScript');
  static const Language JavaScriptReact = Language._(93, _omitEnumNames ? '' : 'JavaScriptReact');
  static const Language Jsonnet = Language._(76, _omitEnumNames ? '' : 'Jsonnet');
  static const Language Julia = Language._(55, _omitEnumNames ? '' : 'Julia');
  static const Language Justfile = Language._(109, _omitEnumNames ? '' : 'Justfile');
  static const Language Kotlin = Language._(4, _omitEnumNames ? '' : 'Kotlin');
  static const Language LaTeX = Language._(83, _omitEnumNames ? '' : 'LaTeX');
  static const Language Lean = Language._(48, _omitEnumNames ? '' : 'Lean');
  static const Language Less = Language._(27, _omitEnumNames ? '' : 'Less');
  static const Language Lua = Language._(12, _omitEnumNames ? '' : 'Lua');
  static const Language Luau = Language._(108, _omitEnumNames ? '' : 'Luau');
  static const Language Makefile = Language._(79, _omitEnumNames ? '' : 'Makefile');
  static const Language Markdown = Language._(84, _omitEnumNames ? '' : 'Markdown');
  static const Language Matlab = Language._(52, _omitEnumNames ? '' : 'Matlab');
  static const Language Nickel = Language._(110, _omitEnumNames ? '' : 'Nickel');
  static const Language Nix = Language._(77, _omitEnumNames ? '' : 'Nix');
  static const Language OCaml = Language._(41, _omitEnumNames ? '' : 'OCaml');
  static const Language Objective_C = Language._(36, _omitEnumNames ? '' : 'Objective_C');
  static const Language Objective_CPP = Language._(37, _omitEnumNames ? '' : 'Objective_CPP');
  static const Language Pascal = Language._(99, _omitEnumNames ? '' : 'Pascal');
  static const Language PHP = Language._(19, _omitEnumNames ? '' : 'PHP');
  static const Language PLSQL = Language._(70, _omitEnumNames ? '' : 'PLSQL');
  static const Language Perl = Language._(13, _omitEnumNames ? '' : 'Perl');
  static const Language PowerShell = Language._(67, _omitEnumNames ? '' : 'PowerShell');
  static const Language Prolog = Language._(71, _omitEnumNames ? '' : 'Prolog');
  static const Language Protobuf = Language._(100, _omitEnumNames ? '' : 'Protobuf');
  static const Language Python = Language._(15, _omitEnumNames ? '' : 'Python');
  static const Language R = Language._(54, _omitEnumNames ? '' : 'R');
  static const Language Racket = Language._(11, _omitEnumNames ? '' : 'Racket');
  static const Language Raku = Language._(14, _omitEnumNames ? '' : 'Raku');
  static const Language Razor = Language._(62, _omitEnumNames ? '' : 'Razor');
  static const Language Repro = Language._(102, _omitEnumNames ? '' : 'Repro');
  static const Language ReST = Language._(85, _omitEnumNames ? '' : 'ReST');
  static const Language Ruby = Language._(16, _omitEnumNames ? '' : 'Ruby');
  static const Language Rust = Language._(40, _omitEnumNames ? '' : 'Rust');
  static const Language SAS = Language._(61, _omitEnumNames ? '' : 'SAS');
  static const Language SCSS = Language._(29, _omitEnumNames ? '' : 'SCSS');
  static const Language SML = Language._(43, _omitEnumNames ? '' : 'SML');
  static const Language SQL = Language._(69, _omitEnumNames ? '' : 'SQL');
  static const Language Sass = Language._(28, _omitEnumNames ? '' : 'Sass');
  static const Language Scala = Language._(5, _omitEnumNames ? '' : 'Scala');
  static const Language Scheme = Language._(10, _omitEnumNames ? '' : 'Scheme');
  static const Language ShellScript = Language._(64, _omitEnumNames ? '' : 'ShellScript');
  static const Language Skylark = Language._(78, _omitEnumNames ? '' : 'Skylark');
  static const Language Slang = Language._(107, _omitEnumNames ? '' : 'Slang');
  static const Language Solidity = Language._(95, _omitEnumNames ? '' : 'Solidity');
  static const Language Svelte = Language._(106, _omitEnumNames ? '' : 'Svelte');
  static const Language Swift = Language._(2, _omitEnumNames ? '' : 'Swift');
  static const Language Tcl = Language._(101, _omitEnumNames ? '' : 'Tcl');
  static const Language TOML = Language._(73, _omitEnumNames ? '' : 'TOML');
  static const Language TeX = Language._(82, _omitEnumNames ? '' : 'TeX');
  static const Language Thrift = Language._(103, _omitEnumNames ? '' : 'Thrift');
  static const Language TypeScript = Language._(23, _omitEnumNames ? '' : 'TypeScript');
  static const Language TypeScriptReact = Language._(94, _omitEnumNames ? '' : 'TypeScriptReact');
  static const Language Verilog = Language._(104, _omitEnumNames ? '' : 'Verilog');
  static const Language VHDL = Language._(105, _omitEnumNames ? '' : 'VHDL');
  static const Language VisualBasic = Language._(63, _omitEnumNames ? '' : 'VisualBasic');
  static const Language Vue = Language._(25, _omitEnumNames ? '' : 'Vue');
  static const Language Wolfram = Language._(53, _omitEnumNames ? '' : 'Wolfram');
  static const Language XML = Language._(31, _omitEnumNames ? '' : 'XML');
  static const Language XSL = Language._(32, _omitEnumNames ? '' : 'XSL');
  static const Language YAML = Language._(74, _omitEnumNames ? '' : 'YAML');
  static const Language Zig = Language._(38, _omitEnumNames ? '' : 'Zig');

  static const $core.List<Language> values = <Language> [
    UnspecifiedLanguage,
    ABAP,
    Apex,
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
    CUDA,
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
    GraphQL,
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
    Justfile,
    Kotlin,
    LaTeX,
    Lean,
    Less,
    Lua,
    Luau,
    Makefile,
    Markdown,
    Matlab,
    Nickel,
    Nix,
    OCaml,
    Objective_C,
    Objective_CPP,
    Pascal,
    PHP,
    PLSQL,
    Perl,
    PowerShell,
    Prolog,
    Protobuf,
    Python,
    R,
    Racket,
    Raku,
    Razor,
    Repro,
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
    Slang,
    Solidity,
    Svelte,
    Swift,
    Tcl,
    TOML,
    TeX,
    Thrift,
    TypeScript,
    TypeScriptReact,
    Verilog,
    VHDL,
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
  static const Descriptor_Suffix UnspecifiedSuffix = Descriptor_Suffix._(0, _omitEnumNames ? '' : 'UnspecifiedSuffix');
  static const Descriptor_Suffix Namespace = Descriptor_Suffix._(1, _omitEnumNames ? '' : 'Namespace');
  static const Descriptor_Suffix Type = Descriptor_Suffix._(2, _omitEnumNames ? '' : 'Type');
  static const Descriptor_Suffix Term = Descriptor_Suffix._(3, _omitEnumNames ? '' : 'Term');
  static const Descriptor_Suffix Method = Descriptor_Suffix._(4, _omitEnumNames ? '' : 'Method');
  static const Descriptor_Suffix TypeParameter = Descriptor_Suffix._(5, _omitEnumNames ? '' : 'TypeParameter');
  static const Descriptor_Suffix Parameter = Descriptor_Suffix._(6, _omitEnumNames ? '' : 'Parameter');
  static const Descriptor_Suffix Meta = Descriptor_Suffix._(7, _omitEnumNames ? '' : 'Meta');
  static const Descriptor_Suffix Local = Descriptor_Suffix._(8, _omitEnumNames ? '' : 'Local');
  static const Descriptor_Suffix Macro = Descriptor_Suffix._(9, _omitEnumNames ? '' : 'Macro');

  static const Descriptor_Suffix Package = Namespace;

  static const $core.List<Descriptor_Suffix> values = <Descriptor_Suffix> [
    UnspecifiedSuffix,
    Namespace,
    Type,
    Term,
    Method,
    TypeParameter,
    Parameter,
    Meta,
    Local,
    Macro,
  ];

  static final $core.Map<$core.int, Descriptor_Suffix> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Descriptor_Suffix? valueOf($core.int value) => _byValue[value];

  const Descriptor_Suffix._($core.int v, $core.String n) : super(v, n);
}

///  (optional) Kind represents the fine-grained category of a symbol, suitable for presenting
///  information about the symbol's meaning in the language.
///
///  For example:
///  - A Java method would have the kind `Method` while a Go function would
///    have the kind `Function`, even if the symbols for these use the same
///    syntax for the descriptor `SymbolDescriptor.Suffix.Method`.
///  - A Go struct has the symbol kind `Struct` while a Java class has
///    the symbol kind `Class` even if they both have the same descriptor:
///    `SymbolDescriptor.Suffix.Type`.
///
///  Since Kind is more fine-grained than Suffix:
///  - If two symbols have the same Kind, they should share the same Suffix.
///  - If two symbols have different Suffixes, they should have different Kinds.
class SymbolInformation_Kind extends $pb.ProtobufEnum {
  static const SymbolInformation_Kind UnspecifiedKind = SymbolInformation_Kind._(0, _omitEnumNames ? '' : 'UnspecifiedKind');
  static const SymbolInformation_Kind AbstractMethod = SymbolInformation_Kind._(66, _omitEnumNames ? '' : 'AbstractMethod');
  static const SymbolInformation_Kind Accessor = SymbolInformation_Kind._(72, _omitEnumNames ? '' : 'Accessor');
  static const SymbolInformation_Kind Array = SymbolInformation_Kind._(1, _omitEnumNames ? '' : 'Array');
  static const SymbolInformation_Kind Assertion = SymbolInformation_Kind._(2, _omitEnumNames ? '' : 'Assertion');
  static const SymbolInformation_Kind AssociatedType = SymbolInformation_Kind._(3, _omitEnumNames ? '' : 'AssociatedType');
  static const SymbolInformation_Kind Attribute = SymbolInformation_Kind._(4, _omitEnumNames ? '' : 'Attribute');
  static const SymbolInformation_Kind Axiom = SymbolInformation_Kind._(5, _omitEnumNames ? '' : 'Axiom');
  static const SymbolInformation_Kind Boolean = SymbolInformation_Kind._(6, _omitEnumNames ? '' : 'Boolean');
  static const SymbolInformation_Kind Class = SymbolInformation_Kind._(7, _omitEnumNames ? '' : 'Class');
  static const SymbolInformation_Kind Constant = SymbolInformation_Kind._(8, _omitEnumNames ? '' : 'Constant');
  static const SymbolInformation_Kind Constructor = SymbolInformation_Kind._(9, _omitEnumNames ? '' : 'Constructor');
  static const SymbolInformation_Kind Contract = SymbolInformation_Kind._(62, _omitEnumNames ? '' : 'Contract');
  static const SymbolInformation_Kind DataFamily = SymbolInformation_Kind._(10, _omitEnumNames ? '' : 'DataFamily');
  static const SymbolInformation_Kind Delegate = SymbolInformation_Kind._(73, _omitEnumNames ? '' : 'Delegate');
  static const SymbolInformation_Kind Enum = SymbolInformation_Kind._(11, _omitEnumNames ? '' : 'Enum');
  static const SymbolInformation_Kind EnumMember = SymbolInformation_Kind._(12, _omitEnumNames ? '' : 'EnumMember');
  static const SymbolInformation_Kind Error = SymbolInformation_Kind._(63, _omitEnumNames ? '' : 'Error');
  static const SymbolInformation_Kind Event = SymbolInformation_Kind._(13, _omitEnumNames ? '' : 'Event');
  static const SymbolInformation_Kind Fact = SymbolInformation_Kind._(14, _omitEnumNames ? '' : 'Fact');
  static const SymbolInformation_Kind Field = SymbolInformation_Kind._(15, _omitEnumNames ? '' : 'Field');
  static const SymbolInformation_Kind File = SymbolInformation_Kind._(16, _omitEnumNames ? '' : 'File');
  static const SymbolInformation_Kind Function = SymbolInformation_Kind._(17, _omitEnumNames ? '' : 'Function');
  static const SymbolInformation_Kind Getter = SymbolInformation_Kind._(18, _omitEnumNames ? '' : 'Getter');
  static const SymbolInformation_Kind Grammar = SymbolInformation_Kind._(19, _omitEnumNames ? '' : 'Grammar');
  static const SymbolInformation_Kind Instance = SymbolInformation_Kind._(20, _omitEnumNames ? '' : 'Instance');
  static const SymbolInformation_Kind Interface = SymbolInformation_Kind._(21, _omitEnumNames ? '' : 'Interface');
  static const SymbolInformation_Kind Key = SymbolInformation_Kind._(22, _omitEnumNames ? '' : 'Key');
  static const SymbolInformation_Kind Lang = SymbolInformation_Kind._(23, _omitEnumNames ? '' : 'Lang');
  static const SymbolInformation_Kind Lemma = SymbolInformation_Kind._(24, _omitEnumNames ? '' : 'Lemma');
  static const SymbolInformation_Kind Library = SymbolInformation_Kind._(64, _omitEnumNames ? '' : 'Library');
  static const SymbolInformation_Kind Macro = SymbolInformation_Kind._(25, _omitEnumNames ? '' : 'Macro');
  static const SymbolInformation_Kind Method = SymbolInformation_Kind._(26, _omitEnumNames ? '' : 'Method');
  static const SymbolInformation_Kind MethodAlias = SymbolInformation_Kind._(74, _omitEnumNames ? '' : 'MethodAlias');
  static const SymbolInformation_Kind MethodReceiver = SymbolInformation_Kind._(27, _omitEnumNames ? '' : 'MethodReceiver');
  static const SymbolInformation_Kind MethodSpecification = SymbolInformation_Kind._(67, _omitEnumNames ? '' : 'MethodSpecification');
  static const SymbolInformation_Kind Message = SymbolInformation_Kind._(28, _omitEnumNames ? '' : 'Message');
  static const SymbolInformation_Kind Modifier = SymbolInformation_Kind._(65, _omitEnumNames ? '' : 'Modifier');
  static const SymbolInformation_Kind Module = SymbolInformation_Kind._(29, _omitEnumNames ? '' : 'Module');
  static const SymbolInformation_Kind Namespace = SymbolInformation_Kind._(30, _omitEnumNames ? '' : 'Namespace');
  static const SymbolInformation_Kind Null = SymbolInformation_Kind._(31, _omitEnumNames ? '' : 'Null');
  static const SymbolInformation_Kind Number = SymbolInformation_Kind._(32, _omitEnumNames ? '' : 'Number');
  static const SymbolInformation_Kind Object_ = SymbolInformation_Kind._(33, _omitEnumNames ? '' : 'Object');
  static const SymbolInformation_Kind Operator = SymbolInformation_Kind._(34, _omitEnumNames ? '' : 'Operator');
  static const SymbolInformation_Kind Package = SymbolInformation_Kind._(35, _omitEnumNames ? '' : 'Package');
  static const SymbolInformation_Kind PackageObject = SymbolInformation_Kind._(36, _omitEnumNames ? '' : 'PackageObject');
  static const SymbolInformation_Kind Parameter = SymbolInformation_Kind._(37, _omitEnumNames ? '' : 'Parameter');
  static const SymbolInformation_Kind ParameterLabel = SymbolInformation_Kind._(38, _omitEnumNames ? '' : 'ParameterLabel');
  static const SymbolInformation_Kind Pattern = SymbolInformation_Kind._(39, _omitEnumNames ? '' : 'Pattern');
  static const SymbolInformation_Kind Predicate = SymbolInformation_Kind._(40, _omitEnumNames ? '' : 'Predicate');
  static const SymbolInformation_Kind Property = SymbolInformation_Kind._(41, _omitEnumNames ? '' : 'Property');
  static const SymbolInformation_Kind Protocol = SymbolInformation_Kind._(42, _omitEnumNames ? '' : 'Protocol');
  static const SymbolInformation_Kind ProtocolMethod = SymbolInformation_Kind._(68, _omitEnumNames ? '' : 'ProtocolMethod');
  static const SymbolInformation_Kind PureVirtualMethod = SymbolInformation_Kind._(69, _omitEnumNames ? '' : 'PureVirtualMethod');
  static const SymbolInformation_Kind Quasiquoter = SymbolInformation_Kind._(43, _omitEnumNames ? '' : 'Quasiquoter');
  static const SymbolInformation_Kind SelfParameter = SymbolInformation_Kind._(44, _omitEnumNames ? '' : 'SelfParameter');
  static const SymbolInformation_Kind Setter = SymbolInformation_Kind._(45, _omitEnumNames ? '' : 'Setter');
  static const SymbolInformation_Kind Signature = SymbolInformation_Kind._(46, _omitEnumNames ? '' : 'Signature');
  static const SymbolInformation_Kind SingletonClass = SymbolInformation_Kind._(75, _omitEnumNames ? '' : 'SingletonClass');
  static const SymbolInformation_Kind SingletonMethod = SymbolInformation_Kind._(76, _omitEnumNames ? '' : 'SingletonMethod');
  static const SymbolInformation_Kind StaticDataMember = SymbolInformation_Kind._(77, _omitEnumNames ? '' : 'StaticDataMember');
  static const SymbolInformation_Kind StaticEvent = SymbolInformation_Kind._(78, _omitEnumNames ? '' : 'StaticEvent');
  static const SymbolInformation_Kind StaticField = SymbolInformation_Kind._(79, _omitEnumNames ? '' : 'StaticField');
  static const SymbolInformation_Kind StaticMethod = SymbolInformation_Kind._(80, _omitEnumNames ? '' : 'StaticMethod');
  static const SymbolInformation_Kind StaticProperty = SymbolInformation_Kind._(81, _omitEnumNames ? '' : 'StaticProperty');
  static const SymbolInformation_Kind StaticVariable = SymbolInformation_Kind._(82, _omitEnumNames ? '' : 'StaticVariable');
  static const SymbolInformation_Kind String = SymbolInformation_Kind._(48, _omitEnumNames ? '' : 'String');
  static const SymbolInformation_Kind Struct = SymbolInformation_Kind._(49, _omitEnumNames ? '' : 'Struct');
  static const SymbolInformation_Kind Subscript = SymbolInformation_Kind._(47, _omitEnumNames ? '' : 'Subscript');
  static const SymbolInformation_Kind Tactic = SymbolInformation_Kind._(50, _omitEnumNames ? '' : 'Tactic');
  static const SymbolInformation_Kind Theorem = SymbolInformation_Kind._(51, _omitEnumNames ? '' : 'Theorem');
  static const SymbolInformation_Kind ThisParameter = SymbolInformation_Kind._(52, _omitEnumNames ? '' : 'ThisParameter');
  static const SymbolInformation_Kind Trait = SymbolInformation_Kind._(53, _omitEnumNames ? '' : 'Trait');
  static const SymbolInformation_Kind TraitMethod = SymbolInformation_Kind._(70, _omitEnumNames ? '' : 'TraitMethod');
  static const SymbolInformation_Kind Type = SymbolInformation_Kind._(54, _omitEnumNames ? '' : 'Type');
  static const SymbolInformation_Kind TypeAlias = SymbolInformation_Kind._(55, _omitEnumNames ? '' : 'TypeAlias');
  static const SymbolInformation_Kind TypeClass = SymbolInformation_Kind._(56, _omitEnumNames ? '' : 'TypeClass');
  static const SymbolInformation_Kind TypeClassMethod = SymbolInformation_Kind._(71, _omitEnumNames ? '' : 'TypeClassMethod');
  static const SymbolInformation_Kind TypeFamily = SymbolInformation_Kind._(57, _omitEnumNames ? '' : 'TypeFamily');
  static const SymbolInformation_Kind TypeParameter = SymbolInformation_Kind._(58, _omitEnumNames ? '' : 'TypeParameter');
  static const SymbolInformation_Kind Union = SymbolInformation_Kind._(59, _omitEnumNames ? '' : 'Union');
  static const SymbolInformation_Kind Value = SymbolInformation_Kind._(60, _omitEnumNames ? '' : 'Value');
  static const SymbolInformation_Kind Variable = SymbolInformation_Kind._(61, _omitEnumNames ? '' : 'Variable');

  static const $core.List<SymbolInformation_Kind> values = <SymbolInformation_Kind> [
    UnspecifiedKind,
    AbstractMethod,
    Accessor,
    Array,
    Assertion,
    AssociatedType,
    Attribute,
    Axiom,
    Boolean,
    Class,
    Constant,
    Constructor,
    Contract,
    DataFamily,
    Delegate,
    Enum,
    EnumMember,
    Error,
    Event,
    Fact,
    Field,
    File,
    Function,
    Getter,
    Grammar,
    Instance,
    Interface,
    Key,
    Lang,
    Lemma,
    Library,
    Macro,
    Method,
    MethodAlias,
    MethodReceiver,
    MethodSpecification,
    Message,
    Modifier,
    Module,
    Namespace,
    Null,
    Number,
    Object_,
    Operator,
    Package,
    PackageObject,
    Parameter,
    ParameterLabel,
    Pattern,
    Predicate,
    Property,
    Protocol,
    ProtocolMethod,
    PureVirtualMethod,
    Quasiquoter,
    SelfParameter,
    Setter,
    Signature,
    SingletonClass,
    SingletonMethod,
    StaticDataMember,
    StaticEvent,
    StaticField,
    StaticMethod,
    StaticProperty,
    StaticVariable,
    String,
    Struct,
    Subscript,
    Tactic,
    Theorem,
    ThisParameter,
    Trait,
    TraitMethod,
    Type,
    TypeAlias,
    TypeClass,
    TypeClassMethod,
    TypeFamily,
    TypeParameter,
    Union,
    Value,
    Variable,
  ];

  static final $core.Map<$core.int, SymbolInformation_Kind> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SymbolInformation_Kind? valueOf($core.int value) => _byValue[value];

  const SymbolInformation_Kind._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
