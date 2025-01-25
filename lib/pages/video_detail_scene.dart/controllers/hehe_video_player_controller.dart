import 'dart:io';

import 'package:cosmoplay/pages/video_detail_scene.dart/controllers/hehe_video_player_state.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart' hide Trans;
import 'package:video_player/video_player.dart';

class HeHeVideoPlayerController extends GetxController {
  late VideoPlayerController videoPlayerController;
  final Rx<HeHeVideoPlayerState> _rxPlayerState =
      HeHeVideoPlayerState.idle().obs;
  HeHeVideoPlayerState get playerState => _rxPlayerState.value;

  Future<void> initializeVideoWithNetwork(
    String videoId,
    String videoUrl,
    String thumbnailUrl,
  ) async {
    _rxPlayerState.value = HeHeVideoPlayerState.initialWithNetwork(
      videoId: videoId,
      videoUrl: videoUrl,
      thumbnailUrl: thumbnailUrl,
    );
    try {
      final url = Uri.parse(videoUrl);
      videoPlayerController = VideoPlayerController.networkUrl(url);
      await videoPlayerController.initialize();

      _rxPlayerState.value = HeHeVideoPlayerState.initialized(
        length: videoPlayerController.value.duration,
      );
      if (videoPlayerController.value.isInitialized) {
        await videoPlayerController.play();
      }
      videoPlayerController.addListener(
        _videoPlayerListener,
      );
    } catch (e) {
      _rxPlayerState.value = HeHeVideoPlayerState.error(
        error: e.toString(),
      );
    }
  }

  Future<void> initializeVideoWithLocal(
    String videoId,
    File file,
    String thumbnailUrl,
  ) async {
    _rxPlayerState.value = HeHeVideoPlayerState.initialWithLocal(
      videoId: videoId,
      file: file,
      thumbnailUrl: thumbnailUrl,
    );
    try {
      videoPlayerController = VideoPlayerController.file(file);
      await videoPlayerController.initialize();

      _rxPlayerState.value = HeHeVideoPlayerState.initialized(
        length: videoPlayerController.value.duration,
      );
      if (videoPlayerController.value.isInitialized) {
        await videoPlayerController.play();
      }
      videoPlayerController.addListener(
        _videoPlayerListener,
      );
    } catch (e) {
      _rxPlayerState.value = HeHeVideoPlayerState.error(
        error: e.toString(),
      );
    }
  }

  void seekTo(Duration position) {
    videoPlayerController.seekTo(position);
  }

  void _videoPlayerListener() {
    if (videoPlayerController.value.isBuffering) {
      _rxPlayerState.value = HeHeVideoPlayerState.buffering();
    } else if (videoPlayerController.value.isPlaying) {
      _rxPlayerState.value = HeHeVideoPlayerState.playing(
        currentPosition: videoPlayerController.value.position,
      );
    } else if (videoPlayerController.value.position >=
        videoPlayerController.value.duration -
            const Duration(milliseconds: 500)) {
      _rxPlayerState.value = HeHeVideoPlayerState.completed();
    }
  }

  Future<void> pause() async {
    await videoPlayerController.pause();
    _rxPlayerState.value = HeHeVideoPlayerState.paused(
      currentPosition: videoPlayerController.value.position,
    );
  }

  Future<void> resume() async {
    await videoPlayerController.play();
    _rxPlayerState.value = HeHeVideoPlayerState.playing(
      currentPosition: videoPlayerController.value.position,
    );
  }

  Future<void> stop() async {
    await videoPlayerController.pause();
    await videoPlayerController.seekTo(
      Duration.zero,
    );
    _rxPlayerState.value = HeHeVideoPlayerState.idle();
  }

  @override
  void onInit() {
    super.onInit();
    _rxPlayerState.listen(
      (playerState) {
        debugPrint(
          playerState.toString(),
        );
      },
    );
  }

  @override
  void dispose() {
    if (videoPlayerController.value.isInitialized) {
      videoPlayerController.removeListener(
        _videoPlayerListener,
      );
      videoPlayerController.dispose();
    }
    super.dispose();
  }
}
