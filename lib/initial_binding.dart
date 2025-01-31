import 'package:cosmoplay/flavors.dart';
import 'package:cosmoplay/managers/video_manager.dart';
import 'package:cosmoplay/pages/video_detail_scene.dart/controllers/hehe_video_player_controller.dart';
import 'package:cosmoplay/pages/video_detail_scene.dart/services/video_download_service.dart';
import 'package:cosmoplay/pages/video_detail_scene.dart/services/video_player_service.dart';

import 'package:get/get.dart';

import 'pages/video_list_scene.dart/services/get_video_list_service.dart';

class InitialBinding extends Bindings {
  final FlavorConfig flavorConfig;

  InitialBinding({
    required this.flavorConfig,
  });
  @override
  void dependencies() {
    Get.put<FlavorConfig>(
      flavorConfig,
      permanent: true,
    );
    Get.put<VideoManager>(
      VideoManager(),
      permanent: true,
    );
    Get.put<GetVideoListService>(
      GetVideoListService(),
      permanent: true,
    );
    Get.lazyPut<HeHeVideoPlayerController>(
      () => HeHeVideoPlayerController(),
      fenix: true,
    );
    Get.lazyPut<VideoPlayerService>(
      () => VideoPlayerService(),
      fenix: true,
    );
    Get.lazyPut<VideoDownloadService>(
      () => VideoDownloadService(),
      fenix: true,
    );
  }
}
