part of 'video_detail_scene.dart';

class VideoDetailSceneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HeHeVideoPlayerController());
    Get.lazyPut(() => VideoDownloadService());
  }
}
