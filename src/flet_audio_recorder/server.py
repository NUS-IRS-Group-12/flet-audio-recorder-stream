import grpc
import time
from concurrent import futures

from generated import audio_pb2, audio_pb2_grpc


class AudioStreamService(audio_pb2_grpc.AudioStreamServicer):
    def StreamAudio(self, request_iterator, context):
        print("Client connected. Start receiving audio...")

        for chunk in request_iterator:
            audio_len = len(chunk.audio_chunk)
            print(f"Received {audio_len} bytes, speaking={chunk.is_speaking}")
            yield audio_pb2.ServerMessage(status=f"OK {audio_len} bytes")

        print("Client disconnected.")
        return


def serve():
    server = grpc.server(
        futures.ThreadPoolExecutor(max_workers=4),
        options=[
            ("grpc.max_receive_message_length", 1024 * 1024 * 16),  # 16MB
        ]
    )
    audio_pb2_grpc.add_AudioStreamServicer_to_server(AudioStreamService(), server)
    server.add_insecure_port("127.0.0.1:50351")
    server.start()
    print("gRPC server started at 127.0.0.1:50351")
    server.wait_for_termination()


if __name__ == "__main__":
    serve()
