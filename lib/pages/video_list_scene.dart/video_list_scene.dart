import 'dart:async';
import 'package:cosmoplay/app_routes.dart';
import 'package:cosmoplay/network/model/hehe_video.dart';
import 'package:cosmoplay/pages/video_list_scene.dart/services/get_video_list_service.dart';
import 'package:cosmoplay/pages/video_list_scene.dart/widgets/video_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/base_state.dart';
import 'package:get/get.dart' hide Trans;

part 'video_list_scene_binding.dart';
part 'video_list_scene.view.dart';

class VideoListScene extends StatefulWidget {
  const VideoListScene({super.key});

  @override
  State<VideoListScene> createState() => _VideoListSceneState();
}

class _VideoListSceneState extends BaseSceneState<VideoListScene> {
  final _getVideoListController = Get.find<GetVideoListService>();

  @override
  void initState() {
    super.initState();
    _getVideoListController.loadVideos();
  }

  void _toVideoDetailScene(List<HeHeVideo> videos) => unawaited(
        Get.toNamed(
          AppRoutes.videoDetailScene,
          arguments: videos..shuffle(),
        ),
      );

  @override
  BaseStateWidgetBuilder<BaseState<StatefulWidget>> get widgetBuilder =>
      _VideoListSceneStateWidgetBuilder(this);
}
