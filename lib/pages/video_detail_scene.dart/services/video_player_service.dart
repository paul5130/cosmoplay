import 'dart:io';

import 'package:get/get.dart' hide Trans;
import 'package:video_player/video_player.dart';

import '../controllers/video_player_state.dart';

class VideoPlayerService extends GetxService {
  VideoPlayerController? _controller;

  VideoPlayerController? get controller => _controller;
  final _rxVideoPlayerState = Rx<VideoPlayerState>(VideoPlayerState.idle());
  VideoPlayerState get videoPlayerState => _rxVideoPlayerState.value;

  final _rxPosition = Rx<Duration>(Duration.zero);
  Duration get position => _rxPosition.value;

  final _rxDuration = Rx<Duration>(Duration.zero);
  Duration get duration => _rxDuration.value;

  final RxBool _rxIsPlaying = RxBool(false);
  bool get isPlaying => _rxIsPlaying.value;

  final RxBool isCompleted = RxBool(false);

  void initialize(String thumbnailUrl) {
    _rxVideoPlayerState.value = VideoPlayerState.initializing(
      thumbnailUrl: thumbnailUrl,
    );
  }

  Future<void> initializeNetwork(Uri url) async {
    await _initializeController(
      VideoPlayerController.networkUrl(url),
    );
  }

  Future<void> initializeLocal(File file) async {
    await _initializeController(
      VideoPlayerController.file(file),
    );
  }

  Future<void> _initializeController(VideoPlayerController controller) async {
    resetController();
    _controller = controller;
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
    _rxIsPlaying.value = _controller!.value.isPlaying;
    isCompleted.value = _controller!.value.isCompleted;
  }

  void play() {
    _controller?.play();
  }

  void pause() {
    _controller?.pause();
  }

  void dispose() {
    _controller?.removeListener(_videoPlayerListener);
    _controller?.dispose();
    _controller = null;
  }

  void seekTo(Duration position) {
    _controller?.seekTo(position);
  }

  void stop() {
    _controller?.pause();
    _controller?.removeListener(_videoPlayerListener);
    _controller?.dispose();
    _controller = null;
  }

  void resetController() {
    if (_controller != null) {
      _controller!.pause();
      _controller!.removeListener(_videoPlayerListener);
      _controller!.dispose();
      _controller = null;
    }
  }

  @override
  void onClose() {
    _controller?.removeListener(_videoPlayerListener);
    _controller?.dispose();
    _controller = null;
    super.onClose();
  }
}
