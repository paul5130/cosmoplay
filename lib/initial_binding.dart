import 'package:cosmoplay/flavors.dart';
import 'package:cosmoplay/pages/video_detail_scene.dart/controllers/online_video_player_controller.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  final FlavorConfig flavorConfig;

  InitialBinding({
    required this.flavorConfig,
  });
  @override
  void dependencies() {
    Get.lazyPut<FlavorConfig>(() => flavorConfig, fenix: true);
    Get.lazyPut<OnlineVideoPlayerController>(
      () => OnlineVideoPlayerController(),
      fenix: true,
    );
  }
}
