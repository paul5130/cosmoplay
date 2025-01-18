part of 'video_detail_scene.dart';

class VideoDetailSceneBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(OnlineVideoPlayerController());
  }
}
