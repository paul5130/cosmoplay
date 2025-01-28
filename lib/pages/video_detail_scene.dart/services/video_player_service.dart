import 'dart:io';

import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerService {
  VideoPlayerController? _controller;

  VideoPlayerController? get controller => _controller;

  final _rxIsInitialized = RxBool(false);

  bool get isInitialized => _rxIsInitialized.value;
  set isInitialized(bool value) => _rxIsInitialized.value = value;
  Duration get position => _controller?.value.position ?? Duration.zero;
  Duration get duration => _controller?.value.duration ?? Duration.zero;

  Future<void> initializeNetwork(Uri url) async {
    _controller = VideoPlayerController.networkUrl(url);
    await _controller!.initialize();
    if (_controller!.value.isInitialized) {
      isInitialized = true;
    }
  }

  Future<void> initializeLocal(File file) async {
    _controller = VideoPlayerController.file(file);
    await _controller!.initialize();
    if (_controller!.value.isInitialized) {
      isInitialized = true;
    }
  }

  void play() => _controller?.play();

  void pause() => _controller?.pause();

  void dispose() {
    _controller?.dispose();
    _controller = null;
  }

  void seekTo(Duration position) {
    _controller?.seekTo(position);
  }
}
