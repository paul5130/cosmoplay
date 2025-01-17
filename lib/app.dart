import 'package:cosmoplay/initial_binding.dart';
import 'package:cosmoplay/pages/video_player_scene.dart/video_player_scene.dart';

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
      initialRoute: VideoPlayerScene.ROUTE_NAME,
      getPages: [
        GetPage(
          name: VideoPlayerScene.ROUTE_NAME,
          page: () => const VideoPlayerScene(),
        ),
      ],
    );
  }
}
