// This is a generated file - do not edit.
//
// Generated from audio.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use clientAudioDescriptor instead')
const ClientAudio$json = {
  '1': 'ClientAudio',
  '2': [
    {'1': 'audio_chunk', '3': 1, '4': 1, '5': 12, '10': 'audioChunk'},
    {'1': 'is_speaking', '3': 2, '4': 1, '5': 8, '10': 'isSpeaking'},
  ],
};

/// Descriptor for `ClientAudio`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientAudioDescriptor = $convert.base64Decode(
    'CgtDbGllbnRBdWRpbxIfCgthdWRpb19jaHVuaxgBIAEoDFIKYXVkaW9DaHVuaxIfCgtpc19zcG'
    'Vha2luZxgCIAEoCFIKaXNTcGVha2luZw==');

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage$json = {
  '1': 'ServerMessage',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `ServerMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverMessageDescriptor = $convert
    .base64Decode('Cg1TZXJ2ZXJNZXNzYWdlEhYKBnN0YXR1cxgBIAEoCVIGc3RhdHVz');
