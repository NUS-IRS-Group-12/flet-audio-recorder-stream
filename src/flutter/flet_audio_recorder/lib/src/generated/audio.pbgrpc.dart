// This is a generated file - do not edit.
//
// Generated from audio.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'audio.pb.dart' as $0;

export 'audio.pb.dart';

@$pb.GrpcServiceName('audio.AudioStream')
class AudioStreamClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  AudioStreamClient(super.channel, {super.options, super.interceptors});

  /// Bidirectional streaming for lowest latency
  $grpc.ResponseStream<$0.ServerMessage> streamAudio(
    $async.Stream<$0.ClientAudio> request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(_$streamAudio, request, options: options);
  }

  // method descriptors

  static final _$streamAudio =
      $grpc.ClientMethod<$0.ClientAudio, $0.ServerMessage>(
          '/audio.AudioStream/StreamAudio',
          ($0.ClientAudio value) => value.writeToBuffer(),
          $0.ServerMessage.fromBuffer);
}

@$pb.GrpcServiceName('audio.AudioStream')
abstract class AudioStreamServiceBase extends $grpc.Service {
  $core.String get $name => 'audio.AudioStream';

  AudioStreamServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ClientAudio, $0.ServerMessage>(
        'StreamAudio',
        streamAudio,
        true,
        true,
        ($core.List<$core.int> value) => $0.ClientAudio.fromBuffer(value),
        ($0.ServerMessage value) => value.writeToBuffer()));
  }

  $async.Stream<$0.ServerMessage> streamAudio(
      $grpc.ServiceCall call, $async.Stream<$0.ClientAudio> request);
}
