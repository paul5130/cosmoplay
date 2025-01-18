part of 'video_player_scene.dart';

class VideoPlayerSceneBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(OnlineVideoPlayerController());
  }
}
