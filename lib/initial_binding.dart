import 'package:cosmoplay/flavors.dart';
import 'package:cosmoplay/pages/video_detail_scene.dart/controllers/hehe_video_player_controller.dart';
import 'package:cosmoplay/pages/video_list_scene.dart/controllers/get_video_list_controller.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  final FlavorConfig flavorConfig;

  InitialBinding({
    required this.flavorConfig,
  });
  @override
  void dependencies() {
    Get.lazyPut<FlavorConfig>(
      () => flavorConfig,
      fenix: true,
    );
    Get.lazyPut<HeHeVideoPlayerController>(
      () => HeHeVideoPlayerController(),
      fenix: true,
    );
    Get.lazyPut<GetVideoListController>(
      () => GetVideoListController(),
      fenix: true,
    );
  }
}
