import 'dart:io';

import 'package:cosmoplay/services/hehe_audio_handler.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart' hide Trans;
import 'package:video_player/video_player.dart';

import '../../pages/video_detail_scene.dart/controllers/video_player_state.dart';

class VideoPlayerService extends GetxService with WidgetsBindingObserver {
  VideoPlayerController? _controller;

  VideoPlayerController? get controller => _controller;

  HeHeAudioHandler? _audioHandler;
  HeHeAudioHandler? get audioHandler => _audioHandler;

  final _rxVideoPlayerState = Rx<VideoPlayerState>(VideoPlayerState.idle());
  VideoPlayerState get videoPlayerState => _rxVideoPlayerState.value;

  final rxPosition = Rx<Duration>(Duration.zero);

  final _rxDuration = Rx<Duration>(Duration.zero);
  Duration get duration => _rxDuration.value;

  final RxBool _rxIsPlaying = RxBool(false);
  bool get isPlaying => _rxIsPlaying.value;

  final RxBool rxIsCompleted = RxBool(false);

  final RxBool _rxIsAudioOnly = RxBool(false);
  bool get isAudioOnly => _rxIsAudioOnly.value;

  Uri? _videoUrl;

  void initialize(String thumbnailUrl) {
    _rxVideoPlayerState.value = VideoPlayerState.initializing(
      thumbnailUrl: thumbnailUrl,
    );
  }

  Future<void> initializeNetwork(Uri url) async {
    _videoUrl = url;
    await _initializeController(
      VideoPlayerController.networkUrl(url),
    );
  }

  Future<void> initializeLocal(File file) async {
    _videoUrl = Uri.file(file.path);
    await _initializeController(
      VideoPlayerController.file(file),
    );
  }

  Future<void> _initializeController(VideoPlayerController controller) async {
    stop();
    _controller = controller;
    try {
      await _controller!.initialize();
      _controller!.addListener(_videoPlayerListener);
      WidgetsBinding.instance.addObserver(this);
      _rxVideoPlayerState.value = VideoPlayerState.initialized();
    } catch (e) {
      _rxVideoPlayerState.value = VideoPlayerState.error(
        error: e.toString(),
      );
    }
  }

  void _videoPlayerListener() {
    if (_controller == null) return;
    rxPosition.value = _controller!.value.position;
    _rxIsPlaying.value = _controller!.value.isPlaying;
    _rxDuration.value = _controller!.value.duration;
    rxIsCompleted.value = _controller!.value.isCompleted;
  }

  Future<void> _switchToBackgroundAudio() async {
    if (_controller == null || _videoUrl == null) return;
    _rxIsAudioOnly.value = true;
    rxPosition.value = _controller!.value.position;
    _controller?.pause();
    _audioHandler ??= HeHeAudioHandler(uri: _videoUrl!);
    await _audioHandler?.setMediaItem(
      _videoUrl!,
      position: rxPosition.value,
    );
    await _audioHandler?.play();
  }

  void _switchToVideo() {
    if (_controller == null) return;
    _rxIsAudioOnly.value = false;
    Duration lastPosition =
        _audioHandler?.getCurrentPosition() ?? Duration.zero;
    rxPosition.value = lastPosition;
    _controller?.seekTo(lastPosition);
    _audioHandler?.stop();
    _controller?.play();
  }

  void play() {
    if (isAudioOnly) {
      _audioHandler?.play();
    } else {
      _controller?.seekTo(rxPosition.value);
      _controller?.play();
    }
  }

  void pause() {
    if (isAudioOnly) {
      _audioHandler?.pause();
    } else {
      _controller?.pause();
    }
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

  @override
  void onClose() {
    _controller?.removeListener(_videoPlayerListener);
    _controller?.dispose();
    _controller = null;
    _audioHandler?.stop();
    WidgetsBinding.instance.removeObserver(this);
    super.onClose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      _switchToBackgroundAudio();
    } else if (state == AppLifecycleState.resumed) {
      _switchToVideo();
    }
  }
}
