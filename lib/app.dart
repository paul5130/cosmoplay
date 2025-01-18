import 'package:cosmoplay/initial_binding.dart';
import 'package:cosmoplay/pages/video_detail_scene.dart/video_detail_scene.dart';
import 'package:cosmoplay/pages/video_list_scene.dart/video_list_scene.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;

class App extends StatelessWidget {
  const App({
    required this.initialBinding,
    super.key,
  });
  final InitialBinding initialBinding;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: initialBinding.flavorConfig.title,
      initialBinding: initialBinding,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: VideoListScene.ROUTE_NAME,
      getPages: [
        GetPage(
          name: VideoListScene.ROUTE_NAME,
          page: () => const VideoListScene(),
        ),
        GetPage(
          name: VideoDetailScene.ROUTE_NAME,
          page: () => const VideoDetailScene(),
        ),
      ],
    );
  }
}
