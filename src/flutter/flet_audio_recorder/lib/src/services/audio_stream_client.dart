import 'package:grpc/grpc.dart';
import '../generated/audio.pbgrpc.dart';
import 'dart:async';
import 'package:flutter/widgets.dart';

class AudioGrpcClient {
  late final ClientChannel _channel;
  late final AudioStreamClient _stub;
  late StreamController<ClientAudio> _controller;

  StreamSubscription<ServerMessage>? _responseSubscription;

  Future<void> connect({required String host, int port = 50051}) async {
    _channel = ClientChannel(
      host,
      port: port,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );

    _stub = AudioStreamClient(_channel);
    _controller = StreamController<ClientAudio>();

    final responseStream = _stub.streamAudio(_controller.stream);

    _responseSubscription = responseStream.listen(
      (ServerMessage response) {
        debugPrint('gRPC Server ACK: ${response.status}');
      },
      onError: (e) {
        debugPrint('gRPC Stream Error: $e');
      },
      onDone: () {
        debugPrint('gRPC Server stream closed.');
      },
    );

    debugPrint('gRPC Client connected and stream pipe established.');
  }

  void sendAudioChunk(List<int> bytes) {

    _controller.add(ClientAudio(
      audioChunk: bytes,
      isSpeaking: true,
    ));
  }

  Future<void> stop() async {
    await _responseSubscription?.cancel();
    await _controller.close();
    await _channel.shutdown();
    debugPrint('gRPC Client stopped.');
  }
}
