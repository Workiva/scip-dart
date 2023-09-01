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

/// SymbolRole declares what "role" a symbol has in an occurrence.  A role is
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
/// "CPlusPlus" in this enum and other names such as "cpp" are incompatible.
/// Feel free to send a pull-request to add missing programming languages.
class Language extends $pb.ProtobufEnum {
  static const Language UnspecifiedLanguage = Language._(0, _omitEnumNames ? '' : 'UnspecifiedLanguage');
  static const Language ABAP = Language._(60, _omitEnumNames ? '' : 'ABAP');
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
  static const Language Kotlin = Language._(4, _omitEnumNames ? '' : 'Kotlin');
  static const Language LaTeX = Language._(83, _omitEnumNames ? '' : 'LaTeX');
  static const Language Lean = Language._(48, _omitEnumNames ? '' : 'Lean');
  static const Language Less = Language._(27, _omitEnumNames ? '' : 'Less');
  static const Language Lua = Language._(12, _omitEnumNames ? '' : 'Lua');
  static const Language Makefile = Language._(79, _omitEnumNames ? '' : 'Makefile');
  static const Language Markdown = Language._(84, _omitEnumNames ? '' : 'Markdown');
  static const Language Matlab = Language._(52, _omitEnumNames ? '' : 'Matlab');
  static const Language Nix = Language._(77, _omitEnumNames ? '' : 'Nix');
  static const Language OCaml = Language._(41, _omitEnumNames ? '' : 'OCaml');
  static const Language Objective_C = Language._(36, _omitEnumNames ? '' : 'Objective_C');
  static const Language Objective_CPP = Language._(37, _omitEnumNames ? '' : 'Objective_CPP');
  static const Language PHP = Language._(19, _omitEnumNames ? '' : 'PHP');
  static const Language PLSQL = Language._(70, _omitEnumNames ? '' : 'PLSQL');
  static const Language Perl = Language._(13, _omitEnumNames ? '' : 'Perl');
  static const Language PowerShell = Language._(67, _omitEnumNames ? '' : 'PowerShell');
  static const Language Prolog = Language._(71, _omitEnumNames ? '' : 'Prolog');
  static const Language Python = Language._(15, _omitEnumNames ? '' : 'Python');
  static const Language R = Language._(54, _omitEnumNames ? '' : 'R');
  static const Language Racket = Language._(11, _omitEnumNames ? '' : 'Racket');
  static const Language Raku = Language._(14, _omitEnumNames ? '' : 'Raku');
  static const Language Razor = Language._(62, _omitEnumNames ? '' : 'Razor');
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
  static const Language Swift = Language._(2, _omitEnumNames ? '' : 'Swift');
  static const Language TOML = Language._(73, _omitEnumNames ? '' : 'TOML');
  static const Language TeX = Language._(82, _omitEnumNames ? '' : 'TeX');
  static const Language TypeScript = Language._(23, _omitEnumNames ? '' : 'TypeScript');
  static const Language TypeScriptReact = Language._(94, _omitEnumNames ? '' : 'TypeScriptReact');
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
  static const Descriptor_Suffix UnspecifiedSuffix = Descriptor_Suffix._(0, _omitEnumNames ? '' : 'UnspecifiedSuffix');
  static const Descriptor_Suffix Namespace = Descriptor_Suffix._(1, _omitEnumNames ? '' : 'Namespace');
  static const Descriptor_Suffix Type = Descriptor_Suffix._(2, _omitEnumNames ? '' : 'Type');
  static const Descriptor_Suffix Term = Descriptor_Suffix._(3, _omitEnumNames ? '' : 'Term');
  static const Descriptor_Suffix Method = Descriptor_Suffix._(4, _omitEnumNames ? '' : 'Method');
  static const Descriptor_Suffix TypeParameter = Descriptor_Suffix._(5, _omitEnumNames ? '' : 'TypeParameter');
  static const Descriptor_Suffix Parameter = Descriptor_Suffix._(6, _omitEnumNames ? '' : 'Parameter');
  static const Descriptor_Suffix Macro = Descriptor_Suffix._(9, _omitEnumNames ? '' : 'Macro');
  static const Descriptor_Suffix Meta = Descriptor_Suffix._(7, _omitEnumNames ? '' : 'Meta');
  static const Descriptor_Suffix Local = Descriptor_Suffix._(8, _omitEnumNames ? '' : 'Local');

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


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
