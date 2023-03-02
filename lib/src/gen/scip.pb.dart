///
//  Generated code. Do not modify.
//  source: lib/src/gen/scip.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'scip.pbenum.dart';

export 'scip.pbenum.dart';

class Index extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Index', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'scip'), createEmptyInstance: create)
    ..aOM<Metadata>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metadata', subBuilder: Metadata.create)
    ..pc<Document>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'documents', $pb.PbFieldType.PM, subBuilder: Document.create)
    ..pc<SymbolInformation>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'externalSymbols', $pb.PbFieldType.PM, subBuilder: SymbolInformation.create)
    ..hasRequiredFields = false
  ;

  Index._() : super();
  factory Index({
    Metadata? metadata,
    $core.Iterable<Document>? documents,
    $core.Iterable<SymbolInformation>? externalSymbols,
  }) {
    final _result = create();
    if (metadata != null) {
      _result.metadata = metadata;
    }
    if (documents != null) {
      _result.documents.addAll(documents);
    }
    if (externalSymbols != null) {
      _result.externalSymbols.addAll(externalSymbols);
    }
    return _result;
  }
  factory Index.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Index.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Index clone() => Index()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Index copyWith(void Function(Index) updates) => super.copyWith((message) => updates(message as Index)) as Index; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Index create() => Index._();
  Index createEmptyInstance() => create();
  static $pb.PbList<Index> createRepeated() => $pb.PbList<Index>();
  @$core.pragma('dart2js:noInline')
  static Index getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Index>(create);
  static Index? _defaultInstance;

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

  @$pb.TagNumber(2)
  $core.List<Document> get documents => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<SymbolInformation> get externalSymbols => $_getList(2);
}

class Metadata extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Metadata', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'scip'), createEmptyInstance: create)
    ..e<ProtocolVersion>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', $pb.PbFieldType.OE, defaultOrMaker: ProtocolVersion.UnspecifiedProtocolVersion, valueOf: ProtocolVersion.valueOf, enumValues: ProtocolVersion.values)
    ..aOM<ToolInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toolInfo', subBuilder: ToolInfo.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'projectRoot')
    ..e<TextEncoding>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'textDocumentEncoding', $pb.PbFieldType.OE, defaultOrMaker: TextEncoding.UnspecifiedTextEncoding, valueOf: TextEncoding.valueOf, enumValues: TextEncoding.values)
    ..hasRequiredFields = false
  ;

  Metadata._() : super();
  factory Metadata({
    ProtocolVersion? version,
    ToolInfo? toolInfo,
    $core.String? projectRoot,
    TextEncoding? textDocumentEncoding,
  }) {
    final _result = create();
    if (version != null) {
      _result.version = version;
    }
    if (toolInfo != null) {
      _result.toolInfo = toolInfo;
    }
    if (projectRoot != null) {
      _result.projectRoot = projectRoot;
    }
    if (textDocumentEncoding != null) {
      _result.textDocumentEncoding = textDocumentEncoding;
    }
    return _result;
  }
  factory Metadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Metadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Metadata clone() => Metadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Metadata copyWith(void Function(Metadata) updates) => super.copyWith((message) => updates(message as Metadata)) as Metadata; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Metadata create() => Metadata._();
  Metadata createEmptyInstance() => create();
  static $pb.PbList<Metadata> createRepeated() => $pb.PbList<Metadata>();
  @$core.pragma('dart2js:noInline')
  static Metadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Metadata>(create);
  static Metadata? _defaultInstance;

  @$pb.TagNumber(1)
  ProtocolVersion get version => $_getN(0);
  @$pb.TagNumber(1)
  set version(ProtocolVersion v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

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

  @$pb.TagNumber(3)
  $core.String get projectRoot => $_getSZ(2);
  @$pb.TagNumber(3)
  set projectRoot($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProjectRoot() => $_has(2);
  @$pb.TagNumber(3)
  void clearProjectRoot() => clearField(3);

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ToolInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'scip'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'arguments')
    ..hasRequiredFields = false
  ;

  ToolInfo._() : super();
  factory ToolInfo({
    $core.String? name,
    $core.String? version,
    $core.Iterable<$core.String>? arguments,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (version != null) {
      _result.version = version;
    }
    if (arguments != null) {
      _result.arguments.addAll(arguments);
    }
    return _result;
  }
  factory ToolInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ToolInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ToolInfo clone() => ToolInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ToolInfo copyWith(void Function(ToolInfo) updates) => super.copyWith((message) => updates(message as ToolInfo)) as ToolInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ToolInfo create() => ToolInfo._();
  ToolInfo createEmptyInstance() => create();
  static $pb.PbList<ToolInfo> createRepeated() => $pb.PbList<ToolInfo>();
  @$core.pragma('dart2js:noInline')
  static ToolInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ToolInfo>(create);
  static ToolInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get arguments => $_getList(2);
}

class Document extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Document', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'scip'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'relativePath')
    ..pc<Occurrence>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'occurrences', $pb.PbFieldType.PM, subBuilder: Occurrence.create)
    ..pc<SymbolInformation>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbols', $pb.PbFieldType.PM, subBuilder: SymbolInformation.create)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'language')
    ..hasRequiredFields = false
  ;

  Document._() : super();
  factory Document({
    $core.String? relativePath,
    $core.Iterable<Occurrence>? occurrences,
    $core.Iterable<SymbolInformation>? symbols,
    $core.String? language,
  }) {
    final _result = create();
    if (relativePath != null) {
      _result.relativePath = relativePath;
    }
    if (occurrences != null) {
      _result.occurrences.addAll(occurrences);
    }
    if (symbols != null) {
      _result.symbols.addAll(symbols);
    }
    if (language != null) {
      _result.language = language;
    }
    return _result;
  }
  factory Document.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Document.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Document clone() => Document()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Document copyWith(void Function(Document) updates) => super.copyWith((message) => updates(message as Document)) as Document; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Document create() => Document._();
  Document createEmptyInstance() => create();
  static $pb.PbList<Document> createRepeated() => $pb.PbList<Document>();
  @$core.pragma('dart2js:noInline')
  static Document getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Document>(create);
  static Document? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get relativePath => $_getSZ(0);
  @$pb.TagNumber(1)
  set relativePath($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRelativePath() => $_has(0);
  @$pb.TagNumber(1)
  void clearRelativePath() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Occurrence> get occurrences => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<SymbolInformation> get symbols => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get language => $_getSZ(3);
  @$pb.TagNumber(4)
  set language($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLanguage() => $_has(3);
  @$pb.TagNumber(4)
  void clearLanguage() => clearField(4);
}

class Symbol extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Symbol', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'scip'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scheme')
    ..aOM<Package>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'package', subBuilder: Package.create)
    ..pc<Descriptor>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'descriptors', $pb.PbFieldType.PM, subBuilder: Descriptor.create)
    ..hasRequiredFields = false
  ;

  Symbol._() : super();
  factory Symbol({
    $core.String? scheme,
    Package? package,
    $core.Iterable<Descriptor>? descriptors,
  }) {
    final _result = create();
    if (scheme != null) {
      _result.scheme = scheme;
    }
    if (package != null) {
      _result.package = package;
    }
    if (descriptors != null) {
      _result.descriptors.addAll(descriptors);
    }
    return _result;
  }
  factory Symbol.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Symbol.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Symbol clone() => Symbol()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Symbol copyWith(void Function(Symbol) updates) => super.copyWith((message) => updates(message as Symbol)) as Symbol; // ignore: deprecated_member_use
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

class Package extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Package', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'scip'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'manager')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..hasRequiredFields = false
  ;

  Package._() : super();
  factory Package({
    $core.String? manager,
    $core.String? name,
    $core.String? version,
  }) {
    final _result = create();
    if (manager != null) {
      _result.manager = manager;
    }
    if (name != null) {
      _result.name = name;
    }
    if (version != null) {
      _result.version = version;
    }
    return _result;
  }
  factory Package.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Package.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Package clone() => Package()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Package copyWith(void Function(Package) updates) => super.copyWith((message) => updates(message as Package)) as Package; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Descriptor', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'scip'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disambiguator')
    ..e<Descriptor_Suffix>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'suffix', $pb.PbFieldType.OE, defaultOrMaker: Descriptor_Suffix.UnspecifiedSuffix, valueOf: Descriptor_Suffix.valueOf, enumValues: Descriptor_Suffix.values)
    ..hasRequiredFields = false
  ;

  Descriptor._() : super();
  factory Descriptor({
    $core.String? name,
    $core.String? disambiguator,
    Descriptor_Suffix? suffix,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (disambiguator != null) {
      _result.disambiguator = disambiguator;
    }
    if (suffix != null) {
      _result.suffix = suffix;
    }
    return _result;
  }
  factory Descriptor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Descriptor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Descriptor clone() => Descriptor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Descriptor copyWith(void Function(Descriptor) updates) => super.copyWith((message) => updates(message as Descriptor)) as Descriptor; // ignore: deprecated_member_use
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

class SymbolInformation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SymbolInformation', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'scip'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbol')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'documentation')
    ..pc<Relationship>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'relationships', $pb.PbFieldType.PM, subBuilder: Relationship.create)
    ..hasRequiredFields = false
  ;

  SymbolInformation._() : super();
  factory SymbolInformation({
    $core.String? symbol,
    $core.Iterable<$core.String>? documentation,
    $core.Iterable<Relationship>? relationships,
  }) {
    final _result = create();
    if (symbol != null) {
      _result.symbol = symbol;
    }
    if (documentation != null) {
      _result.documentation.addAll(documentation);
    }
    if (relationships != null) {
      _result.relationships.addAll(relationships);
    }
    return _result;
  }
  factory SymbolInformation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SymbolInformation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SymbolInformation clone() => SymbolInformation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SymbolInformation copyWith(void Function(SymbolInformation) updates) => super.copyWith((message) => updates(message as SymbolInformation)) as SymbolInformation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SymbolInformation create() => SymbolInformation._();
  SymbolInformation createEmptyInstance() => create();
  static $pb.PbList<SymbolInformation> createRepeated() => $pb.PbList<SymbolInformation>();
  @$core.pragma('dart2js:noInline')
  static SymbolInformation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SymbolInformation>(create);
  static SymbolInformation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get symbol => $_getSZ(0);
  @$pb.TagNumber(1)
  set symbol($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSymbol() => $_has(0);
  @$pb.TagNumber(1)
  void clearSymbol() => clearField(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get documentation => $_getList(1);

  @$pb.TagNumber(4)
  $core.List<Relationship> get relationships => $_getList(2);
}

class Relationship extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Relationship', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'scip'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbol')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isReference')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isImplementation')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isTypeDefinition')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isDefinition')
    ..hasRequiredFields = false
  ;

  Relationship._() : super();
  factory Relationship({
    $core.String? symbol,
    $core.bool? isReference,
    $core.bool? isImplementation,
    $core.bool? isTypeDefinition,
    $core.bool? isDefinition,
  }) {
    final _result = create();
    if (symbol != null) {
      _result.symbol = symbol;
    }
    if (isReference != null) {
      _result.isReference = isReference;
    }
    if (isImplementation != null) {
      _result.isImplementation = isImplementation;
    }
    if (isTypeDefinition != null) {
      _result.isTypeDefinition = isTypeDefinition;
    }
    if (isDefinition != null) {
      _result.isDefinition = isDefinition;
    }
    return _result;
  }
  factory Relationship.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Relationship.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Relationship clone() => Relationship()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Relationship copyWith(void Function(Relationship) updates) => super.copyWith((message) => updates(message as Relationship)) as Relationship; // ignore: deprecated_member_use
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

  @$pb.TagNumber(2)
  $core.bool get isReference => $_getBF(1);
  @$pb.TagNumber(2)
  set isReference($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsReference() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsReference() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isImplementation => $_getBF(2);
  @$pb.TagNumber(3)
  set isImplementation($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsImplementation() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsImplementation() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isTypeDefinition => $_getBF(3);
  @$pb.TagNumber(4)
  set isTypeDefinition($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsTypeDefinition() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsTypeDefinition() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isDefinition => $_getBF(4);
  @$pb.TagNumber(5)
  set isDefinition($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIsDefinition() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsDefinition() => clearField(5);
}

class Occurrence extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Occurrence', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'scip'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'range', $pb.PbFieldType.K3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbol')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbolRoles', $pb.PbFieldType.O3)
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'overrideDocumentation')
    ..e<SyntaxKind>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'syntaxKind', $pb.PbFieldType.OE, defaultOrMaker: SyntaxKind.UnspecifiedSyntaxKind, valueOf: SyntaxKind.valueOf, enumValues: SyntaxKind.values)
    ..pc<Diagnostic>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diagnostics', $pb.PbFieldType.PM, subBuilder: Diagnostic.create)
    ..hasRequiredFields = false
  ;

  Occurrence._() : super();
  factory Occurrence({
    $core.Iterable<$core.int>? range,
    $core.String? symbol,
    $core.int? symbolRoles,
    $core.Iterable<$core.String>? overrideDocumentation,
    SyntaxKind? syntaxKind,
    $core.Iterable<Diagnostic>? diagnostics,
  }) {
    final _result = create();
    if (range != null) {
      _result.range.addAll(range);
    }
    if (symbol != null) {
      _result.symbol = symbol;
    }
    if (symbolRoles != null) {
      _result.symbolRoles = symbolRoles;
    }
    if (overrideDocumentation != null) {
      _result.overrideDocumentation.addAll(overrideDocumentation);
    }
    if (syntaxKind != null) {
      _result.syntaxKind = syntaxKind;
    }
    if (diagnostics != null) {
      _result.diagnostics.addAll(diagnostics);
    }
    return _result;
  }
  factory Occurrence.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Occurrence.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Occurrence clone() => Occurrence()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Occurrence copyWith(void Function(Occurrence) updates) => super.copyWith((message) => updates(message as Occurrence)) as Occurrence; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Occurrence create() => Occurrence._();
  Occurrence createEmptyInstance() => create();
  static $pb.PbList<Occurrence> createRepeated() => $pb.PbList<Occurrence>();
  @$core.pragma('dart2js:noInline')
  static Occurrence getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Occurrence>(create);
  static Occurrence? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get range => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get symbol => $_getSZ(1);
  @$pb.TagNumber(2)
  set symbol($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSymbol() => $_has(1);
  @$pb.TagNumber(2)
  void clearSymbol() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get symbolRoles => $_getIZ(2);
  @$pb.TagNumber(3)
  set symbolRoles($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSymbolRoles() => $_has(2);
  @$pb.TagNumber(3)
  void clearSymbolRoles() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get overrideDocumentation => $_getList(3);

  @$pb.TagNumber(5)
  SyntaxKind get syntaxKind => $_getN(4);
  @$pb.TagNumber(5)
  set syntaxKind(SyntaxKind v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSyntaxKind() => $_has(4);
  @$pb.TagNumber(5)
  void clearSyntaxKind() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<Diagnostic> get diagnostics => $_getList(5);
}

class Diagnostic extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Diagnostic', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'scip'), createEmptyInstance: create)
    ..e<Severity>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'severity', $pb.PbFieldType.OE, defaultOrMaker: Severity.UnspecifiedSeverity, valueOf: Severity.valueOf, enumValues: Severity.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'source')
    ..pc<DiagnosticTag>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tags', $pb.PbFieldType.KE, valueOf: DiagnosticTag.valueOf, enumValues: DiagnosticTag.values, defaultEnumValue: DiagnosticTag.UnspecifiedDiagnosticTag)
    ..hasRequiredFields = false
  ;

  Diagnostic._() : super();
  factory Diagnostic({
    Severity? severity,
    $core.String? code,
    $core.String? message,
    $core.String? source,
    $core.Iterable<DiagnosticTag>? tags,
  }) {
    final _result = create();
    if (severity != null) {
      _result.severity = severity;
    }
    if (code != null) {
      _result.code = code;
    }
    if (message != null) {
      _result.message = message;
    }
    if (source != null) {
      _result.source = source;
    }
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    return _result;
  }
  factory Diagnostic.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Diagnostic.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Diagnostic clone() => Diagnostic()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Diagnostic copyWith(void Function(Diagnostic) updates) => super.copyWith((message) => updates(message as Diagnostic)) as Diagnostic; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Diagnostic create() => Diagnostic._();
  Diagnostic createEmptyInstance() => create();
  static $pb.PbList<Diagnostic> createRepeated() => $pb.PbList<Diagnostic>();
  @$core.pragma('dart2js:noInline')
  static Diagnostic getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Diagnostic>(create);
  static Diagnostic? _defaultInstance;

  @$pb.TagNumber(1)
  Severity get severity => $_getN(0);
  @$pb.TagNumber(1)
  set severity(Severity v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSeverity() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeverity() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);

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

