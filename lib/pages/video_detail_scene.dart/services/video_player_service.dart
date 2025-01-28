import 'dart:io';

import 'package:get/get.dart' hide Trans;
import 'package:video_player/video_player.dart';

import '../controllers/video_player_state.dart';

class VideoPlayerService {
  VideoPlayerController? _controller;

  VideoPlayerController? get controller => _controller;
  final _rxVideoPlayerState = Rx<VideoPlayerState>(VideoPlayerState.idle());
  VideoPlayerState get videoPlayerState => _rxVideoPlayerState.value;

  final _rxPosition = Rx<Duration>(Duration.zero);
  Duration get position => _rxPosition.value;

  final _rxDuration = Rx<Duration>(Duration.zero);
  Duration get duration => _rxDuration.value;

  void initialize(String thumbnailUrl) {
    _rxVideoPlayerState.value = VideoPlayerState.initializing(
      thumbnailUrl: thumbnailUrl,
    );
  }

  Future<void> initializeNetwork(Uri url) async {
    _controller = VideoPlayerController.networkUrl(url);
    try {
      await _controller!.initialize();
      _controller!.addListener(_videoPlayerListener);
      _rxDuration.value = _controller!.value.duration;
      _rxVideoPlayerState.value = VideoPlayerState.initialized();
    } catch (e) {
      _rxVideoPlayerState.value = VideoPlayerState.error(
        error: e.toString(),
      );
    }
  }

  Future<void> initializeLocal(File file) async {
    _controller = VideoPlayerController.file(file);
    try {
      await _controller!.initialize();
      _controller!.addListener(_videoPlayerListener);
      _rxDuration.value = _controller!.value.duration;
      _rxVideoPlayerState.value = VideoPlayerState.initialized();
    } catch (e) {
      _rxVideoPlayerState.value = VideoPlayerState.error(
        error: e.toString(),
      );
    }
  }

  void _videoPlayerListener() {
    if (_controller == null) return;
    _rxPosition.value = _controller!.value.position;
  }

  void play() {
    _controller?.play();
  }

  void pause() {
    _controller?.pause();
  }

  void dispose() {
    _controller?.dispose();
    _controller = null;
  }

  void seekTo(Duration position) {
    _controller?.seekTo(position);
  }
}
