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

import 'scip.pbenum.dart';

export 'scip.pbenum.dart';

/// Index represents a complete SCIP index for a workspace this is rooted at a
/// single directory. An Index message payload can have a large memory footprint
/// and it's therefore recommended to emit and consume an Index payload one field
/// value at a time. To permit streaming consumption of an Index payload, the
/// `metadata` field must appear at the start of the stream and must only appear
/// once in the stream. Other field values may appear in any order.
class Index extends $pb.GeneratedMessage {
  factory Index({
    Metadata? metadata,
    $core.Iterable<Document>? documents,
    $core.Iterable<SymbolInformation>? externalSymbols,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (documents != null) {
      $result.documents.addAll(documents);
    }
    if (externalSymbols != null) {
      $result.externalSymbols.addAll(externalSymbols);
    }
    return $result;
  }
  Index._() : super();
  factory Index.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Index.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Index', package: const $pb.PackageName(_omitMessageNames ? '' : 'scip'), createEmptyInstance: create)
    ..aOM<Metadata>(1, _omitFieldNames ? '' : 'metadata', subBuilder: Metadata.create)
    ..pc<Document>(2, _omitFieldNames ? '' : 'documents', $pb.PbFieldType.PM, subBuilder: Document.create)
    ..pc<SymbolInformation>(3, _omitFieldNames ? '' : 'externalSymbols', $pb.PbFieldType.PM, subBuilder: SymbolInformation.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Index clone() => Index()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Index copyWith(void Function(Index) updates) => super.copyWith((message) => updates(message as Index)) as Index;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Index create() => Index._();
  Index createEmptyInstance() => create();
  static $pb.PbList<Index> createRepeated() => $pb.PbList<Index>();
  @$core.pragma('dart2js:noInline')
  static Index getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Index>(create);
  static Index? _defaultInstance;

  /// Metadata about this index.
  @$pb.TagNumber(1)
  Metadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(Metadata v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  Metadata ensureMetadata() => $_ensure(0);

  /// Documents that belong to this index.
  @$pb.TagNumber(2)
  $core.List<Document> get documents => $_getList(1);

  /// (optional) Symbols that are referenced from this index but are defined in
  /// an external package (a separate `Index` message). Leave this field empty
  /// if you assume the external package will get indexed separately. If the
  /// external package won't get indexed for some reason then you can use this
  /// field to provide hover documentation for those external symbols.
  @$pb.TagNumber(3)
  $core.List<SymbolInformation> get externalSymbols => $_getList(2);
}

class Metadata extends $pb.GeneratedMessage {
  factory Metadata({
    ProtocolVersion? version,
    ToolInfo? toolInfo,
    $core.String? projectRoot,
    TextEncoding? textDocumentEncoding,
  }) {
    final $result = create();
    if (version != null) {
      $result.version = version;
    }
    if (toolInfo != null) {
      $result.toolInfo = toolInfo;
    }
    if (projectRoot != null) {
      $result.projectRoot = projectRoot;
    }
    if (textDocumentEncoding != null) {
      $result.textDocumentEncoding = textDocumentEncoding;
    }
    return $result;
  }
  Metadata._() : super();
  factory Metadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Metadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Metadata', package: const $pb.PackageName(_omitMessageNames ? '' : 'scip'), createEmptyInstance: create)
    ..e<ProtocolVersion>(1, _omitFieldNames ? '' : 'version', $pb.PbFieldType.OE, defaultOrMaker: ProtocolVersion.UnspecifiedProtocolVersion, valueOf: ProtocolVersion.valueOf, enumValues: ProtocolVersion.values)
    ..aOM<ToolInfo>(2, _omitFieldNames ? '' : 'toolInfo', subBuilder: ToolInfo.create)
    ..aOS(3, _omitFieldNames ? '' : 'projectRoot')
    ..e<TextEncoding>(4, _omitFieldNames ? '' : 'textDocumentEncoding', $pb.PbFieldType.OE, defaultOrMaker: TextEncoding.UnspecifiedTextEncoding, valueOf: TextEncoding.valueOf, enumValues: TextEncoding.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Metadata clone() => Metadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Metadata copyWith(void Function(Metadata) updates) => super.copyWith((message) => updates(message as Metadata)) as Metadata;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Metadata create() => Metadata._();
  Metadata createEmptyInstance() => create();
  static $pb.PbList<Metadata> createRepeated() => $pb.PbList<Metadata>();
  @$core.pragma('dart2js:noInline')
  static Metadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Metadata>(create);
  static Metadata? _defaultInstance;

  /// Which version of this protocol was used to generate this index?
  @$pb.TagNumber(1)
  ProtocolVersion get version => $_getN(0);
  @$pb.TagNumber(1)
  set version(ProtocolVersion v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  /// Information about the tool that produced this index.
  @$pb.TagNumber(2)
  ToolInfo get toolInfo => $_getN(1);
  @$pb.TagNumber(2)
  set toolInfo(ToolInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasToolInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearToolInfo() => clearField(2);
  @$pb.TagNumber(2)
  ToolInfo ensureToolInfo() => $_ensure(1);

  /// URI-encoded absolute path to the root directory of this index. All
  /// documents in this index must appear in a subdirectory of this root
  /// directory.
  @$pb.TagNumber(3)
  $core.String get projectRoot => $_getSZ(2);
  @$pb.TagNumber(3)
  set projectRoot($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProjectRoot() => $_has(2);
  @$pb.TagNumber(3)
  void clearProjectRoot() => clearField(3);

  /// Text encoding of the source files on disk that are referenced from
  /// `Document.relative_path`. This value is unrelated to the `Document.text`
  /// field, which is a Protobuf string and hence must be UTF-8 encoded.
  @$pb.TagNumber(4)
  TextEncoding get textDocumentEncoding => $_getN(3);
  @$pb.TagNumber(4)
  set textDocumentEncoding(TextEncoding v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTextDocumentEncoding() => $_has(3);
  @$pb.TagNumber(4)
  void clearTextDocumentEncoding() => clearField(4);
}

class ToolInfo extends $pb.GeneratedMessage {
  factory ToolInfo({
    $core.String? name,
    $core.String? version,
    $core.Iterable<$core.String>? arguments,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (version != null) {
      $result.version = version;
    }
    if (arguments != null) {
      $result.arguments.addAll(arguments);
    }
    return $result;
  }
  ToolInfo._() : super();
  factory ToolInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ToolInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ToolInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'scip'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..pPS(3, _omitFieldNames ? '' : 'arguments')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ToolInfo clone() => ToolInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ToolInfo copyWith(void Function(ToolInfo) updates) => super.copyWith((message) => updates(message as ToolInfo)) as ToolInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ToolInfo create() => ToolInfo._();
  ToolInfo createEmptyInstance() => create();
  static $pb.PbList<ToolInfo> createRepeated() => $pb.PbList<ToolInfo>();
  @$core.pragma('dart2js:noInline')
  static ToolInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ToolInfo>(create);
  static ToolInfo? _defaultInstance;

  /// Name of the indexer that produced this index.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// Version of the indexer that produced this index.
  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  /// Command-line arguments that were used to invoke this indexer.
  @$pb.TagNumber(3)
  $core.List<$core.String> get arguments => $_getList(2);
}

/// Document defines the metadata about a source file on disk.
class Document extends $pb.GeneratedMessage {
  factory Document({
    $core.String? relativePath,
    $core.Iterable<Occurrence>? occurrences,
    $core.Iterable<SymbolInformation>? symbols,
    $core.String? language,
    $core.String? text,
    PositionEncoding? positionEncoding,
  }) {
    final $result = create();
    if (relativePath != null) {
      $result.relativePath = relativePath;
    }
    if (occurrences != null) {
      $result.occurrences.addAll(occurrences);
    }
    if (symbols != null) {
      $result.symbols.addAll(symbols);
    }
    if (language != null) {
      $result.language = language;
    }
    if (text != null) {
      $result.text = text;
    }
    if (positionEncoding != null) {
      $result.positionEncoding = positionEncoding;
    }
    return $result;
  }
  Document._() : super();
  factory Document.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Document.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Document', package: const $pb.PackageName(_omitMessageNames ? '' : 'scip'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'relativePath')
    ..pc<Occurrence>(2, _omitFieldNames ? '' : 'occurrences', $pb.PbFieldType.PM, subBuilder: Occurrence.create)
    ..pc<SymbolInformation>(3, _omitFieldNames ? '' : 'symbols', $pb.PbFieldType.PM, subBuilder: SymbolInformation.create)
    ..aOS(4, _omitFieldNames ? '' : 'language')
    ..aOS(5, _omitFieldNames ? '' : 'text')
    ..e<PositionEncoding>(6, _omitFieldNames ? '' : 'positionEncoding', $pb.PbFieldType.OE, defaultOrMaker: PositionEncoding.UnspecifiedPositionEncoding, valueOf: PositionEncoding.valueOf, enumValues: PositionEncoding.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Document clone() => Document()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Document copyWith(void Function(Document) updates) => super.copyWith((message) => updates(message as Document)) as Document;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Document create() => Document._();
  Document createEmptyInstance() => create();
  static $pb.PbList<Document> createRepeated() => $pb.PbList<Document>();
  @$core.pragma('dart2js:noInline')
  static Document getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Document>(create);
  static Document? _defaultInstance;

  ///  (Required) Unique path to the text document.
  ///
  ///  1. The path must be relative to the directory supplied in the associated
  ///     `Metadata.project_root`.
  ///  2. The path must not begin with a leading '/'.
  ///  3. The path must point to a regular file, not a symbolic link.
  ///  4. The path must use '/' as the separator, including on Windows.
  ///  5. The path must be canonical; it cannot include empty components ('//'),
  ///     or '.' or '..'.
  @$pb.TagNumber(1)
  $core.String get relativePath => $_getSZ(0);
  @$pb.TagNumber(1)
  set relativePath($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRelativePath() => $_has(0);
  @$pb.TagNumber(1)
  void clearRelativePath() => clearField(1);

  /// Occurrences that appear in this file.
  @$pb.TagNumber(2)
  $core.List<Occurrence> get occurrences => $_getList(1);

  ///  Symbols that are "defined" within this document.
  ///
  ///  This should include symbols which technically do not have any definition,
  ///  but have a reference and are defined by some other symbol (see
  ///  Relationship.is_definition).
  @$pb.TagNumber(3)
  $core.List<SymbolInformation> get symbols => $_getList(2);

  /// The string ID for the programming language this file is written in.
  /// The `Language` enum contains the names of most common programming languages.
  /// This field is typed as a string to permit any programming language, including
  /// ones that are not specified by the `Language` enum.
  @$pb.TagNumber(4)
  $core.String get language => $_getSZ(3);
  @$pb.TagNumber(4)
  set language($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLanguage() => $_has(3);
  @$pb.TagNumber(4)
  void clearLanguage() => clearField(4);

  /// (optional) Text contents of the this document. Indexers are not expected to
  /// include the text by default. It's preferrable that clients read the text
  /// contents from the file system by resolving the absolute path from joining
  /// `Index.metadata.project_root` and `Document.relative_path`. This field was
  /// introduced to support `SymbolInformation.signature_documentation`, but it
  /// can be used for other purposes as well, for example testing or when working
  /// with virtual/in-memory documents.
  @$pb.TagNumber(5)
  $core.String get text => $_getSZ(4);
  @$pb.TagNumber(5)
  set text($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasText() => $_has(4);
  @$pb.TagNumber(5)
  void clearText() => clearField(5);

  ///  Specifies the encoding used for source ranges in this Document.
  ///
  ///  Usually, this will match the type used to index the string type
  ///  in the indexer's implementation language in O(1) time.
  ///  - For an indexer implemented in JVM/.NET language or JavaScript/TypeScript,
  ///    use UTF16CodeUnitOffsetFromLineStart.
  ///  - For an indexer implemented in Python,
  ///    use UTF32CodeUnitOffsetFromLineStart.
  ///  - For an indexer implemented in Go, Rust or C++,
  ///    use UTF8ByteOffsetFromLineStart.
  @$pb.TagNumber(6)
  PositionEncoding get positionEncoding => $_getN(5);
  @$pb.TagNumber(6)
  set positionEncoding(PositionEncoding v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasPositionEncoding() => $_has(5);
  @$pb.TagNumber(6)
  void clearPositionEncoding() => clearField(6);
}

///  Symbol is similar to a URI, it identifies a class, method, or a local
///  variable. `SymbolInformation` contains rich metadata about symbols such as
///  the docstring.
///
///  Symbol has a standardized string representation, which can be used
///  interchangeably with `Symbol`. The syntax for Symbol is the following:
///  ```
///  # (<x>)+ stands for one or more repetitions of <x>
///  <symbol>               ::= <scheme> ' ' <package> ' ' (<descriptor>)+ | 'local ' <local-id>
///  <package>              ::= <manager> ' ' <package-name> ' ' <version>
///  <scheme>               ::= any UTF-8, escape spaces with double space.
///  <manager>              ::= same as above, use the placeholder '.' to indicate an empty value
///  <package-name>         ::= same as above
///  <version>              ::= same as above
///  <descriptor>           ::= <namespace> | <type> | <term> | <method> | <type-parameter> | <parameter> | <meta> | <macro>
///  <namespace>            ::= <name> '/'
///  <type>                 ::= <name> '#'
///  <term>                 ::= <name> '.'
///  <meta>                 ::= <name> ':'
///  <macro>                ::= <name> '!'
///  <method>               ::= <name> '(' <method-disambiguator> ').'
///  <type-parameter>       ::= '[' <name> ']'
///  <parameter>            ::= '(' <name> ')'
///  <name>                 ::= <identifier>
///  <method-disambiguator> ::= <simple-identifier>
///  <identifier>           ::= <simple-identifier> | <escaped-identifier>
///  <simple-identifier>    ::= (<identifier-character>)+
///  <identifier-character> ::= '_' | '+' | '-' | '$' | ASCII letter or digit
///  <escaped-identifier>   ::= '`' (<escaped-character>)+ '`'
///  <escaped-characters>   ::= any UTF-8 character, escape backticks with double backtick.
///  <local-id>             ::= <simple-identifier>
///  ```
///
///  The list of descriptors for a symbol should together form a fully
///  qualified name for the symbol. That is, it should serve as a unique
///  identifier across the package. Typically, it will include one descriptor
///  for every node in the AST (along the ancestry path) between the root of
///  the file and the node corresponding to the symbol.
///
///  Local symbols MUST only be used for entities which are local to a Document,
///  and cannot be accessed from outside the Document.
class Symbol extends $pb.GeneratedMessage {
  factory Symbol({
    $core.String? scheme,
    Package? package,
    $core.Iterable<Descriptor>? descriptors,
  }) {
    final $result = create();
    if (scheme != null) {
      $result.scheme = scheme;
    }
    if (package != null) {
      $result.package = package;
    }
    if (descriptors != null) {
      $result.descriptors.addAll(descriptors);
    }
    return $result;
  }
  Symbol._() : super();
  factory Symbol.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Symbol.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Symbol', package: const $pb.PackageName(_omitMessageNames ? '' : 'scip'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'scheme')
    ..aOM<Package>(2, _omitFieldNames ? '' : 'package', subBuilder: Package.create)
    ..pc<Descriptor>(3, _omitFieldNames ? '' : 'descriptors', $pb.PbFieldType.PM, subBuilder: Descriptor.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Symbol clone() => Symbol()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Symbol copyWith(void Function(Symbol) updates) => super.copyWith((message) => updates(message as Symbol)) as Symbol;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Symbol create() => Symbol._();
  Symbol createEmptyInstance() => create();
  static $pb.PbList<Symbol> createRepeated() => $pb.PbList<Symbol>();
  @$core.pragma('dart2js:noInline')
  static Symbol getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Symbol>(create);
  static Symbol? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get scheme => $_getSZ(0);
  @$pb.TagNumber(1)
  set scheme($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScheme() => $_has(0);
  @$pb.TagNumber(1)
  void clearScheme() => clearField(1);

  @$pb.TagNumber(2)
  Package get package => $_getN(1);
  @$pb.TagNumber(2)
  set package(Package v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPackage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPackage() => clearField(2);
  @$pb.TagNumber(2)
  Package ensurePackage() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<Descriptor> get descriptors => $_getList(2);
}

///  Unit of packaging and distribution.
///
///  NOTE: This corresponds to a module in Go and JVM languages.
class Package extends $pb.GeneratedMessage {
  factory Package({
    $core.String? manager,
    $core.String? name,
    $core.String? version,
  }) {
    final $result = create();
    if (manager != null) {
      $result.manager = manager;
    }
    if (name != null) {
      $result.name = name;
    }
    if (version != null) {
      $result.version = version;
    }
    return $result;
  }
  Package._() : super();
  factory Package.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Package.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Package', package: const $pb.PackageName(_omitMessageNames ? '' : 'scip'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'manager')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'version')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Package clone() => Package()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Package copyWith(void Function(Package) updates) => super.copyWith((message) => updates(message as Package)) as Package;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Package create() => Package._();
  Package createEmptyInstance() => create();
  static $pb.PbList<Package> createRepeated() => $pb.PbList<Package>();
  @$core.pragma('dart2js:noInline')
  static Package getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Package>(create);
  static Package? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get manager => $_getSZ(0);
  @$pb.TagNumber(1)
  set manager($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasManager() => $_has(0);
  @$pb.TagNumber(1)
  void clearManager() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => clearField(3);
}

class Descriptor extends $pb.GeneratedMessage {
  factory Descriptor({
    $core.String? name,
    $core.String? disambiguator,
    Descriptor_Suffix? suffix,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (disambiguator != null) {
      $result.disambiguator = disambiguator;
    }
    if (suffix != null) {
      $result.suffix = suffix;
    }
    return $result;
  }
  Descriptor._() : super();
  factory Descriptor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Descriptor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Descriptor', package: const $pb.PackageName(_omitMessageNames ? '' : 'scip'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'disambiguator')
    ..e<Descriptor_Suffix>(3, _omitFieldNames ? '' : 'suffix', $pb.PbFieldType.OE, defaultOrMaker: Descriptor_Suffix.UnspecifiedSuffix, valueOf: Descriptor_Suffix.valueOf, enumValues: Descriptor_Suffix.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Descriptor clone() => Descriptor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Descriptor copyWith(void Function(Descriptor) updates) => super.copyWith((message) => updates(message as Descriptor)) as Descriptor;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Descriptor create() => Descriptor._();
  Descriptor createEmptyInstance() => create();
  static $pb.PbList<Descriptor> createRepeated() => $pb.PbList<Descriptor>();
  @$core.pragma('dart2js:noInline')
  static Descriptor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Descriptor>(create);
  static Descriptor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get disambiguator => $_getSZ(1);
  @$pb.TagNumber(2)
  set disambiguator($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDisambiguator() => $_has(1);
  @$pb.TagNumber(2)
  void clearDisambiguator() => clearField(2);

  @$pb.TagNumber(3)
  Descriptor_Suffix get suffix => $_getN(2);
  @$pb.TagNumber(3)
  set suffix(Descriptor_Suffix v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSuffix() => $_has(2);
  @$pb.TagNumber(3)
  void clearSuffix() => clearField(3);
}

/// SymbolInformation defines metadata about a symbol, such as the symbol's
/// docstring or what package it's defined it.
class SymbolInformation extends $pb.GeneratedMessage {
  factory SymbolInformation({
    $core.String? symbol,
    $core.Iterable<$core.String>? documentation,
    $core.Iterable<Relationship>? relationships,
    SymbolInformation_Kind? kind,
    $core.String? displayName,
    Document? signatureDocumentation,
    $core.String? enclosingSymbol,
  }) {
    final $result = create();
    if (symbol != null) {
      $result.symbol = symbol;
    }
    if (documentation != null) {
      $result.documentation.addAll(documentation);
    }
    if (relationships != null) {
      $result.relationships.addAll(relationships);
    }
    if (kind != null) {
      $result.kind = kind;
    }
    if (displayName != null) {
      $result.displayName = displayName;
    }
    if (signatureDocumentation != null) {
      $result.signatureDocumentation = signatureDocumentation;
    }
    if (enclosingSymbol != null) {
      $result.enclosingSymbol = enclosingSymbol;
    }
    return $result;
  }
  SymbolInformation._() : super();
  factory SymbolInformation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SymbolInformation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SymbolInformation', package: const $pb.PackageName(_omitMessageNames ? '' : 'scip'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'symbol')
    ..pPS(3, _omitFieldNames ? '' : 'documentation')
    ..pc<Relationship>(4, _omitFieldNames ? '' : 'relationships', $pb.PbFieldType.PM, subBuilder: Relationship.create)
    ..e<SymbolInformation_Kind>(5, _omitFieldNames ? '' : 'kind', $pb.PbFieldType.OE, defaultOrMaker: SymbolInformation_Kind.UnspecifiedKind, valueOf: SymbolInformation_Kind.valueOf, enumValues: SymbolInformation_Kind.values)
    ..aOS(6, _omitFieldNames ? '' : 'displayName')
    ..aOM<Document>(7, _omitFieldNames ? '' : 'signatureDocumentation', subBuilder: Document.create)
    ..aOS(8, _omitFieldNames ? '' : 'enclosingSymbol')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SymbolInformation clone() => SymbolInformation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SymbolInformation copyWith(void Function(SymbolInformation) updates) => super.copyWith((message) => updates(message as SymbolInformation)) as SymbolInformation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SymbolInformation create() => SymbolInformation._();
  SymbolInformation createEmptyInstance() => create();
  static $pb.PbList<SymbolInformation> createRepeated() => $pb.PbList<SymbolInformation>();
  @$core.pragma('dart2js:noInline')
  static SymbolInformation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SymbolInformation>(create);
  static SymbolInformation? _defaultInstance;

  /// Identifier of this symbol, which can be referenced from `Occurence.symbol`.
  /// The string must be formatted according to the grammar in `Symbol`.
  @$pb.TagNumber(1)
  $core.String get symbol => $_getSZ(0);
  @$pb.TagNumber(1)
  set symbol($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSymbol() => $_has(0);
  @$pb.TagNumber(1)
  void clearSymbol() => clearField(1);

  /// (optional, but strongly recommended) The markdown-formatted documentation
  /// for this symbol. Use `SymbolInformation.signature_documentation` to
  /// document the method/class/type signature of this symbol.
  /// Due to historical reasons, indexers may include signature documentation in
  /// this field by rendering markdown code blocks. New indexers should only
  /// include non-code documentation in this field, for example docstrings.
  @$pb.TagNumber(3)
  $core.List<$core.String> get documentation => $_getList(1);

  /// (optional) Relationships to other symbols (e.g., implements, type definition).
  @$pb.TagNumber(4)
  $core.List<Relationship> get relationships => $_getList(2);

  /// The kind of this symbol. Use this field instead of
  /// `SymbolDescriptor.Suffix` to determine whether something is, for example, a
  /// class or a method.
  @$pb.TagNumber(5)
  SymbolInformation_Kind get kind => $_getN(3);
  @$pb.TagNumber(5)
  set kind(SymbolInformation_Kind v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasKind() => $_has(3);
  @$pb.TagNumber(5)
  void clearKind() => clearField(5);

  ///  (optional) The name of this symbol as it should be displayed to the user.
  ///  For example, the symbol "com/example/MyClass#myMethod(+1)." should have the
  ///  display name "myMethod". The `symbol` field is not a reliable source of
  ///  the display name for several reasons:
  ///
  ///  - Local symbols don't encode the name.
  ///  - Some languages have case-insensitive names, so the symbol is all-lowercase.
  ///  - The symbol may encode names with special characters that should not be
  ///    displayed to the user.
  @$pb.TagNumber(6)
  $core.String get displayName => $_getSZ(4);
  @$pb.TagNumber(6)
  set displayName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasDisplayName() => $_has(4);
  @$pb.TagNumber(6)
  void clearDisplayName() => clearField(6);

  /// (optional) The signature of this symbol as it's displayed in API
  /// documentation or in hover tooltips. For example, a Java method that adds
  /// two numbers this would have `Document.language = "java"` and `Document.text
  /// = "void add(int a, int b)". The `language` and `text` fields are required
  /// while other fields such as `Documentation.occurrences` can be optionally
  /// included to support hyperlinking referenced symbols in the signature.
  @$pb.TagNumber(7)
  Document get signatureDocumentation => $_getN(5);
  @$pb.TagNumber(7)
  set signatureDocumentation(Document v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSignatureDocumentation() => $_has(5);
  @$pb.TagNumber(7)
  void clearSignatureDocumentation() => clearField(7);
  @$pb.TagNumber(7)
  Document ensureSignatureDocumentation() => $_ensure(5);

  ///  (optional) The enclosing symbol if this is a local symbol.  For non-local
  ///  symbols, the enclosing symbol should be parsed from the `symbol` field
  ///  using the `Descriptor` grammar.
  ///
  ///  The primary use-case for this field is to allow local symbol to be displayed
  ///  in a symbol hierarchy for API documentation. It's OK to leave this field
  ///  empty for local variables since local variables usually don't belong in API
  ///  documentation. However, in the situation that you wish to include a local
  ///  symbol in the hierarchy, then you can use `enclosing_symbol` to locate the
  ///  "parent" or "owner" of this local symbol. For example, a Java indexer may
  ///  choose to use local symbols for private class fields while providing an
  ///  `enclosing_symbol` to reference the enclosing class to allow the field to
  ///  be part of the class documentation hierarchy. From the perspective of an
  ///  author of an indexer, the decision to use a local symbol or global symbol
  ///  should exclusively be determined whether the local symbol is accessible
  ///  outside the document, not by the capability to find the enclosing
  ///  symbol.
  @$pb.TagNumber(8)
  $core.String get enclosingSymbol => $_getSZ(6);
  @$pb.TagNumber(8)
  set enclosingSymbol($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasEnclosingSymbol() => $_has(6);
  @$pb.TagNumber(8)
  void clearEnclosingSymbol() => clearField(8);
}

class Relationship extends $pb.GeneratedMessage {
  factory Relationship({
    $core.String? symbol,
    $core.bool? isReference,
    $core.bool? isImplementation,
    $core.bool? isTypeDefinition,
    $core.bool? isDefinition,
  }) {
    final $result = create();
    if (symbol != null) {
      $result.symbol = symbol;
    }
    if (isReference != null) {
      $result.isReference = isReference;
    }
    if (isImplementation != null) {
      $result.isImplementation = isImplementation;
    }
    if (isTypeDefinition != null) {
      $result.isTypeDefinition = isTypeDefinition;
    }
    if (isDefinition != null) {
      $result.isDefinition = isDefinition;
    }
    return $result;
  }
  Relationship._() : super();
  factory Relationship.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Relationship.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Relationship', package: const $pb.PackageName(_omitMessageNames ? '' : 'scip'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'symbol')
    ..aOB(2, _omitFieldNames ? '' : 'isReference')
    ..aOB(3, _omitFieldNames ? '' : 'isImplementation')
    ..aOB(4, _omitFieldNames ? '' : 'isTypeDefinition')
    ..aOB(5, _omitFieldNames ? '' : 'isDefinition')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Relationship clone() => Relationship()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Relationship copyWith(void Function(Relationship) updates) => super.copyWith((message) => updates(message as Relationship)) as Relationship;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Relationship create() => Relationship._();
  Relationship createEmptyInstance() => create();
  static $pb.PbList<Relationship> createRepeated() => $pb.PbList<Relationship>();
  @$core.pragma('dart2js:noInline')
  static Relationship getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Relationship>(create);
  static Relationship? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get symbol => $_getSZ(0);
  @$pb.TagNumber(1)
  set symbol($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSymbol() => $_has(0);
  @$pb.TagNumber(1)
  void clearSymbol() => clearField(1);

  /// When resolving "Find references", this field documents what other symbols
  /// should be included together with this symbol. For example, consider the
  /// following TypeScript code that defines two symbols `Animal#sound()` and
  /// `Dog#sound()`:
  /// ```ts
  /// interface Animal {
  ///           ^^^^^^ definition Animal#
  ///   sound(): string
  ///   ^^^^^ definition Animal#sound()
  /// }
  /// class Dog implements Animal {
  ///       ^^^ definition Dog#, relationships = [{symbol: "Animal#", is_implementation: true}]
  ///   public sound(): string { return "woof" }
  ///          ^^^^^ definition Dog#sound(), references_symbols = Animal#sound(), relationships = [{symbol: "Animal#sound()", is_implementation:true, is_reference: true}]
  /// }
  /// const animal: Animal = new Dog()
  ///               ^^^^^^ reference Animal#
  /// console.log(animal.sound())
  ///                    ^^^^^ reference Animal#sound()
  /// ```
  /// Doing "Find references" on the symbol `Animal#sound()` should return
  /// references to the `Dog#sound()` method as well. Vice-versa, doing "Find
  /// references" on the `Dog#sound()` method should include references to the
  /// `Animal#sound()` method as well.
  @$pb.TagNumber(2)
  $core.bool get isReference => $_getBF(1);
  @$pb.TagNumber(2)
  set isReference($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsReference() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsReference() => clearField(2);

  /// Similar to `is_reference` but for "Find implementations".
  /// It's common for `is_implementation` and `is_reference` to both be true but
  /// it's not always the case.
  /// In the TypeScript example above, observe that `Dog#` has an
  /// `is_implementation` relationship with `"Animal#"` but not `is_reference`.
  /// This is because "Find references" on the "Animal#" symbol should not return
  /// "Dog#". We only want "Dog#" to return as a result for "Find
  /// implementations" on the "Animal#" symbol.
  @$pb.TagNumber(3)
  $core.bool get isImplementation => $_getBF(2);
  @$pb.TagNumber(3)
  set isImplementation($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsImplementation() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsImplementation() => clearField(3);

  /// Similar to `references_symbols` but for "Go to type definition".
  @$pb.TagNumber(4)
  $core.bool get isTypeDefinition => $_getBF(3);
  @$pb.TagNumber(4)
  set isTypeDefinition($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsTypeDefinition() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsTypeDefinition() => clearField(4);

  ///  Allows overriding the behavior of "Go to definition" and "Find references"
  ///  for symbols which do not have a definition of their own or could
  ///  potentially have multiple definitions.
  ///
  ///  For example, in a language with single inheritance and no field overriding,
  ///  inherited fields can reuse the same symbol as the ancestor which declares
  ///  the field. In such a situation, is_definition is not needed.
  ///
  ///  On the other hand, in languages with single inheritance and some form
  ///  of mixins, you can use is_definition to relate the symbol to the
  ///  matching symbol in ancestor classes, and is_reference to relate the
  ///  symbol to the matching symbol in mixins.
  ///
  ///  NOTE: At the moment, due to limitations of the SCIP to LSIF conversion,
  ///  only global symbols in an index are allowed to use is_definition.
  ///  The relationship may not get recorded if either symbol is local.
  @$pb.TagNumber(5)
  $core.bool get isDefinition => $_getBF(4);
  @$pb.TagNumber(5)
  set isDefinition($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIsDefinition() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsDefinition() => clearField(5);
}

///  Occurrence associates a source position with a symbol and/or highlighting
///  information.
///
///  If possible, indexers should try to bundle logically related information
///  across occurrences into a single occurrence to reduce payload sizes.
class Occurrence extends $pb.GeneratedMessage {
  factory Occurrence({
    $core.Iterable<$core.int>? range,
    $core.String? symbol,
    $core.int? symbolRoles,
    $core.Iterable<$core.String>? overrideDocumentation,
    SyntaxKind? syntaxKind,
    $core.Iterable<Diagnostic>? diagnostics,
    $core.Iterable<$core.int>? enclosingRange,
  }) {
    final $result = create();
    if (range != null) {
      $result.range.addAll(range);
    }
    if (symbol != null) {
      $result.symbol = symbol;
    }
    if (symbolRoles != null) {
      $result.symbolRoles = symbolRoles;
    }
    if (overrideDocumentation != null) {
      $result.overrideDocumentation.addAll(overrideDocumentation);
    }
    if (syntaxKind != null) {
      $result.syntaxKind = syntaxKind;
    }
    if (diagnostics != null) {
      $result.diagnostics.addAll(diagnostics);
    }
    if (enclosingRange != null) {
      $result.enclosingRange.addAll(enclosingRange);
    }
    return $result;
  }
  Occurrence._() : super();
  factory Occurrence.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Occurrence.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Occurrence', package: const $pb.PackageName(_omitMessageNames ? '' : 'scip'), createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'range', $pb.PbFieldType.K3)
    ..aOS(2, _omitFieldNames ? '' : 'symbol')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'symbolRoles', $pb.PbFieldType.O3)
    ..pPS(4, _omitFieldNames ? '' : 'overrideDocumentation')
    ..e<SyntaxKind>(5, _omitFieldNames ? '' : 'syntaxKind', $pb.PbFieldType.OE, defaultOrMaker: SyntaxKind.UnspecifiedSyntaxKind, valueOf: SyntaxKind.valueOf, enumValues: SyntaxKind.values)
    ..pc<Diagnostic>(6, _omitFieldNames ? '' : 'diagnostics', $pb.PbFieldType.PM, subBuilder: Diagnostic.create)
    ..p<$core.int>(7, _omitFieldNames ? '' : 'enclosingRange', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Occurrence clone() => Occurrence()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Occurrence copyWith(void Function(Occurrence) updates) => super.copyWith((message) => updates(message as Occurrence)) as Occurrence;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Occurrence create() => Occurrence._();
  Occurrence createEmptyInstance() => create();
  static $pb.PbList<Occurrence> createRepeated() => $pb.PbList<Occurrence>();
  @$core.pragma('dart2js:noInline')
  static Occurrence getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Occurrence>(create);
  static Occurrence? _defaultInstance;

  ///  Source position of this occurrence. Must be exactly three or four
  ///  elements:
  ///
  ///  - Four elements: `[startLine, startCharacter, endLine, endCharacter]`
  ///  - Three elements: `[startLine, startCharacter, endCharacter]`. The end line
  ///    is inferred to have the same value as the start line.
  ///
  ///  Line numbers and characters are always 0-based. Make sure to increment the
  ///  line/character values before displaying them in an editor-like UI because
  ///  editors conventionally use 1-based numbers.
  ///
  ///  The 'character' value is interpreted based on the PositionEncoding for
  ///  the Document.
  ///
  ///  Historical note: the original draft of this schema had a `Range` message
  ///  type with `start` and `end` fields of type `Position`, mirroring LSP.
  ///  Benchmarks revealed that this encoding was inefficient and that we could
  ///  reduce the total payload size of an index by 50% by using `repeated int32`
  ///  instead. The `repeated int32` encoding is admittedly more embarrassing to
  ///  work with in some programming languages but we hope the performance
  ///  improvements make up for it.
  @$pb.TagNumber(1)
  $core.List<$core.int> get range => $_getList(0);

  /// (optional) The symbol that appears at this position. See
  /// `SymbolInformation.symbol` for how to format symbols as strings.
  @$pb.TagNumber(2)
  $core.String get symbol => $_getSZ(1);
  @$pb.TagNumber(2)
  set symbol($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSymbol() => $_has(1);
  @$pb.TagNumber(2)
  void clearSymbol() => clearField(2);

  /// (optional) Bitset containing `SymbolRole`s in this occurrence.
  /// See `SymbolRole`'s documentation for how to read and write this field.
  @$pb.TagNumber(3)
  $core.int get symbolRoles => $_getIZ(2);
  @$pb.TagNumber(3)
  set symbolRoles($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSymbolRoles() => $_has(2);
  @$pb.TagNumber(3)
  void clearSymbolRoles() => clearField(3);

  ///  (optional) CommonMark-formatted documentation for this specific range. If
  ///  empty, the `Symbol.documentation` field is used instead. One example
  ///  where this field might be useful is when the symbol represents a generic
  ///  function (with abstract type parameters such as `List<T>`) and at this
  ///  occurrence we know the exact values (such as `List<String>`).
  ///
  ///  This field can also be used for dynamically or gradually typed languages,
  ///  which commonly allow for type-changing assignment.
  @$pb.TagNumber(4)
  $core.List<$core.String> get overrideDocumentation => $_getList(3);

  /// (optional) What syntax highlighting class should be used for this range?
  @$pb.TagNumber(5)
  SyntaxKind get syntaxKind => $_getN(4);
  @$pb.TagNumber(5)
  set syntaxKind(SyntaxKind v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSyntaxKind() => $_has(4);
  @$pb.TagNumber(5)
  void clearSyntaxKind() => clearField(5);

  /// (optional) Diagnostics that have been reported for this specific range.
  @$pb.TagNumber(6)
  $core.List<Diagnostic> get diagnostics => $_getList(5);

  ///  (optional) Using the same encoding as the sibling `range` field, source
  ///  position of the nearest non-trivial enclosing AST node. This range must
  ///  enclose the `range` field. Example applications that make use of the
  ///  enclosing_range field:
  ///
  ///  - Call hierarchies: to determine what symbols are references from the body
  ///    of a function
  ///  - Symbol outline: to display breadcrumbs from the cursor position to the
  ///    root of the file
  ///  - Expand selection: to select the nearest enclosing AST node.
  ///  - Highlight range: to indicate the AST expression that is associated with a
  ///    hover popover
  ///
  ///  For definition occurrences, the enclosing range should indicate the
  ///  start/end bounds of the entire definition AST node, including
  ///  documentation.
  ///  ```
  ///  const n = 3
  ///        ^ range
  ///  ^^^^^^^^^^^ enclosing_range
  ///
  ///  /** Parses the string into something */
  ///  ^ enclosing_range start --------------------------------------|
  ///  function parse(input string): string {                        |
  ///           ^^^^^ range                                          |
  ///      return input.slice(n)                                     |
  ///  }                                                             |
  ///  ^ enclosing_range end <---------------------------------------|
  ///  ```
  ///
  ///  Any attributes/decorators/attached macros should also be part of the
  ///  enclosing range.
  ///
  ///  ```python
  ///  @cache
  ///  ^ enclosing_range start---------------------|
  ///  def factorial(n):                           |
  ///      return n * factorial(n-1) if n else 1   |
  ///  < enclosing_range end-----------------------|
  ///
  ///  ```
  ///
  ///  For reference occurrences, the enclosing range should indicate the start/end
  ///  bounds of the parent expression.
  ///  ```
  ///  const a = a.b
  ///              ^ range
  ///            ^^^ enclosing_range
  ///  const b = a.b(41).f(42).g(43)
  ///                    ^ range
  ///            ^^^^^^^^^^^^^ enclosing_range
  ///  ```
  @$pb.TagNumber(7)
  $core.List<$core.int> get enclosingRange => $_getList(6);
}

/// Represents a diagnostic, such as a compiler error or warning, which should be
/// reported for a document.
class Diagnostic extends $pb.GeneratedMessage {
  factory Diagnostic({
    Severity? severity,
    $core.String? code,
    $core.String? message,
    $core.String? source,
    $core.Iterable<DiagnosticTag>? tags,
  }) {
    final $result = create();
    if (severity != null) {
      $result.severity = severity;
    }
    if (code != null) {
      $result.code = code;
    }
    if (message != null) {
      $result.message = message;
    }
    if (source != null) {
      $result.source = source;
    }
    if (tags != null) {
      $result.tags.addAll(tags);
    }
    return $result;
  }
  Diagnostic._() : super();
  factory Diagnostic.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Diagnostic.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Diagnostic', package: const $pb.PackageName(_omitMessageNames ? '' : 'scip'), createEmptyInstance: create)
    ..e<Severity>(1, _omitFieldNames ? '' : 'severity', $pb.PbFieldType.OE, defaultOrMaker: Severity.UnspecifiedSeverity, valueOf: Severity.valueOf, enumValues: Severity.values)
    ..aOS(2, _omitFieldNames ? '' : 'code')
    ..aOS(3, _omitFieldNames ? '' : 'message')
    ..aOS(4, _omitFieldNames ? '' : 'source')
    ..pc<DiagnosticTag>(5, _omitFieldNames ? '' : 'tags', $pb.PbFieldType.KE, valueOf: DiagnosticTag.valueOf, enumValues: DiagnosticTag.values, defaultEnumValue: DiagnosticTag.UnspecifiedDiagnosticTag)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Diagnostic clone() => Diagnostic()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Diagnostic copyWith(void Function(Diagnostic) updates) => super.copyWith((message) => updates(message as Diagnostic)) as Diagnostic;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Diagnostic create() => Diagnostic._();
  Diagnostic createEmptyInstance() => create();
  static $pb.PbList<Diagnostic> createRepeated() => $pb.PbList<Diagnostic>();
  @$core.pragma('dart2js:noInline')
  static Diagnostic getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Diagnostic>(create);
  static Diagnostic? _defaultInstance;

  /// Should this diagnostic be reported as an error, warning, info, or hint?
  @$pb.TagNumber(1)
  Severity get severity => $_getN(0);
  @$pb.TagNumber(1)
  set severity(Severity v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSeverity() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeverity() => clearField(1);

  /// (optional) Code of this diagnostic, which might appear in the user interface.
  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);

  /// Message of this diagnostic.
  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);

  /// (optional) Human-readable string describing the source of this diagnostic, e.g.
  /// 'typescript' or 'super lint'.
  @$pb.TagNumber(4)
  $core.String get source => $_getSZ(3);
  @$pb.TagNumber(4)
  set source($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSource() => $_has(3);
  @$pb.TagNumber(4)
  void clearSource() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<DiagnosticTag> get tags => $_getList(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
