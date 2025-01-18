import 'package:cosmoplay/pages/video_detail_scene.dart/video_detail_scene.dart';
import 'package:cosmoplay/pages/video_list_scene.dart/video_list_scene.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const videoListScene = '/VideoListScene';
  static const videoDetailScene = '/VideoDetailScene';
  static final pages = [
    GetPage(
      name: videoListScene,
      page: () => VideoListScene(),
    ),
    GetPage(
      name: videoDetailScene,
      page: () => VideoDetailScene(),
    ),
  ];
}
