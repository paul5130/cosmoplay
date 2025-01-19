import 'package:cosmoplay/pages/video_detail_scene.dart/controllers/hehe_video_player_state.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart' hide Trans;
import 'package:video_player/video_player.dart';

class HeHeVideoPlayerController extends GetxController {
  late VideoPlayerController videoPlayerController;
  final _rxPlayerState = Rx<HeHeVideoPlayerState>(
    const HeHeVideoPlayerState.idle(),
  );
  HeHeVideoPlayerState get playerState => _rxPlayerState.value;

  Future<void> initializeVideo(
    String videoUrl,
    String thumbnailUrl,
  ) async {
    _rxPlayerState.value = HeHeVideoPlayerState.initial(
      videoUrl: videoUrl,
      thumbnailUrl: thumbnailUrl,
    );
    try {
      final url = Uri.parse(videoUrl);
      videoPlayerController = VideoPlayerController.networkUrl(url);
      await videoPlayerController.initialize();

      _rxPlayerState.value = HeHeVideoPlayerState.initialized(
        videoUrl: url,
        thumbnailUrl: thumbnailUrl,
        length: videoPlayerController.value.duration,
      );
      await videoPlayerController.play();
      videoPlayerController.addListener(
        () {
          if (videoPlayerController.value.isBuffering) {
            _rxPlayerState.value = HeHeVideoPlayerState.buffering(
              videoUrl: url,
              currentPosition: videoPlayerController.value.position,
            );
          } else if (videoPlayerController.value.isPlaying) {
            _rxPlayerState.value = HeHeVideoPlayerState.playing(
              videoUrl: url,
              currentPosition: videoPlayerController.value.position,
            );
          }
        },
      );
    } catch (e) {
      _rxPlayerState.value = HeHeVideoPlayerState.error(
        videoUrl: videoUrl,
        thumbnailUrl: thumbnailUrl,
        error: e.toString(),
      );
    }
  }

  @override
  void onInit() {
    super.onInit();
    _rxPlayerState.listen(
      (playerState) {
        switch (playerState) {
          case final HeHeVideoPlayerStateIdle state:
            debugPrint(state.toString());
          case final HeHeVideoPlayerStateInitial state:
            debugPrint(state.toString());
          case final HeHeVideoPlayerStateInitialized state:
            debugPrint(state.toString());
          case final HeHeVideoPlayerStatePlaying state:
            debugPrint(state.toString());
          case final HeHeVideoPlayerStatePaused state:
            debugPrint(state.toString());
          case final HeHeVideoPlayerStateBuffering state:
            debugPrint(state.toString());
          case final HeHeVideoPlayerStateCompleted state:
            debugPrint(state.toString());
          case final HeHeVideoPlayerStateError state:
            debugPrint(
              state.error.toString(),
            );
        }
      },
    );
  }

  @override
  void dispose() {
    videoPlayerController.dispose();

    super.dispose();
  }
}
