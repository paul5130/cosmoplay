import 'package:cosmoplay/flavors.dart';
import 'package:cosmoplay/pages/video_detail_scene.dart/widgets/hehe_video_player/controllers/hehe_video_player_controller.dart';

import 'package:get/get.dart';

import 'pages/video_list_scene.dart/services/get_video_list_service.dart';

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
    Get.lazyPut<GetVideoListService>(
      () => GetVideoListService(),
      fenix: true,
    );
  }
}
