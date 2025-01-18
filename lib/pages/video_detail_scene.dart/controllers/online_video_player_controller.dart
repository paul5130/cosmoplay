import 'package:cosmoplay/pages/video_detail_scene.dart/controllers/online_video_player_state.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart' hide Trans;
import 'package:video_player/video_player.dart';

class OnlineVideoPlayerController extends GetxController {
  late VideoPlayerController videoPlayerController;
  final _rxPlayerState = Rx<OnlineVideoPlayerState>(
    const OnlineVideoPlayerState.idle(),
  );
  OnlineVideoPlayerState get playerState => _rxPlayerState.value;
  // set setVideoPlayerState(OnlineVideoPlayerState newState) =>
  //     _rxVideoPlayerState.value = newState;

  Future<void> initializeVideo(
    Uri url,
    String thumbnailUrl,
  ) async {
    _rxPlayerState.value = OnlineVideoPlayerState.initial(
      url: url,
      thumbnailUrl: thumbnailUrl,
    );
    try {
      videoPlayerController = VideoPlayerController.networkUrl(url);
      await videoPlayerController.initialize();

      _rxPlayerState.value = OnlineVideoPlayerState.initialized(
        url: url,
        thumbnailUrl: thumbnailUrl,
        length: videoPlayerController.value.duration,
      );
      await videoPlayerController.play();
      videoPlayerController.addListener(
        () {
          if (videoPlayerController.value.isBuffering) {
            _rxPlayerState.value = OnlineVideoPlayerState.buffering(
              url: url,
              currentPosition: videoPlayerController.value.position,
            );
          } else if (videoPlayerController.value.isPlaying) {
            _rxPlayerState.value = OnlineVideoPlayerState.playing(
              url: url,
              currentPosition: videoPlayerController.value.position,
            );
          }
        },
      );
    } catch (e) {
      _rxPlayerState.value = OnlineVideoPlayerState.error(
        url: url,
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
          case final OnlineVideoPlayerStateIdle state:
            debugPrint(state.toString());
          case final OnlineVideoPlayerStateInitial state:
            debugPrint(state.toString());
          case final OnlineVideoPlayerStateInitialized state:
            debugPrint(state.toString());
          case final OnlineVideoPlayerStatePlaying state:
            debugPrint(state.toString());
          case final OnlineVideoPlayerStatePaused state:
            debugPrint(state.toString());
          case final OnlineVideoPlayerStateBuffering state:
            debugPrint(state.toString());
          case final OnlineVideoPlayerStateCompleted state:
            debugPrint(state.toString());
          case final OnlineVideoPlayerStateError state:
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
