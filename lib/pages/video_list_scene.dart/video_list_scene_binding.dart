part of 'video_list_scene.dart';

class VideoListSceneBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(GetVideoListController());
  }
}
