// This is a generated file - do not edit.
//
// Generated from audio.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Flutter → Python
class ClientAudio extends $pb.GeneratedMessage {
  factory ClientAudio({
    $core.List<$core.int>? audioChunk,
    $core.bool? isSpeaking,
  }) {
    final result = create();
    if (audioChunk != null) result.audioChunk = audioChunk;
    if (isSpeaking != null) result.isSpeaking = isSpeaking;
    return result;
  }

  ClientAudio._();

  factory ClientAudio.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ClientAudio.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClientAudio',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'audio'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'audioChunk', $pb.PbFieldType.OY)
    ..aOB(2, _omitFieldNames ? '' : 'isSpeaking')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClientAudio clone() => ClientAudio()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClientAudio copyWith(void Function(ClientAudio) updates) =>
      super.copyWith((message) => updates(message as ClientAudio))
          as ClientAudio;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClientAudio create() => ClientAudio._();
  @$core.override
  ClientAudio createEmptyInstance() => create();
  static $pb.PbList<ClientAudio> createRepeated() => $pb.PbList<ClientAudio>();
  @$core.pragma('dart2js:noInline')
  static ClientAudio getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClientAudio>(create);
  static ClientAudio? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get audioChunk => $_getN(0);
  @$pb.TagNumber(1)
  set audioChunk($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAudioChunk() => $_has(0);
  @$pb.TagNumber(1)
  void clearAudioChunk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isSpeaking => $_getBF(1);
  @$pb.TagNumber(2)
  set isSpeaking($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsSpeaking() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsSpeaking() => $_clearField(2);
}

/// Python → Flutter
class ServerMessage extends $pb.GeneratedMessage {
  factory ServerMessage({
    $core.String? status,
  }) {
    final result = create();
    if (status != null) result.status = status;
    return result;
  }

  ServerMessage._();

  factory ServerMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ServerMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ServerMessage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'audio'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServerMessage clone() => ServerMessage()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServerMessage copyWith(void Function(ServerMessage) updates) =>
      super.copyWith((message) => updates(message as ServerMessage))
          as ServerMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServerMessage create() => ServerMessage._();
  @$core.override
  ServerMessage createEmptyInstance() => create();
  static $pb.PbList<ServerMessage> createRepeated() =>
      $pb.PbList<ServerMessage>();
  @$core.pragma('dart2js:noInline')
  static ServerMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ServerMessage>(create);
  static ServerMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
