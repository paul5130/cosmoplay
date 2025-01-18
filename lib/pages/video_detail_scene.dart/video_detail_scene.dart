import 'package:cosmoplay/network/model/hehe_video.dart';
import 'package:cosmoplay/pages/video_detail_scene.dart/controllers/online_video_player_controller.dart';
import 'package:cosmoplay/pages/video_detail_scene.dart/controllers/online_video_player_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/base_state.dart';
import 'package:get/get.dart' hide Trans;
import 'package:video_player/video_player.dart';

part 'video_detail_scene.view.dart';
part 'video_detail_scene_binding.dart';

class VideoDetailScene extends StatefulWidget {
  const VideoDetailScene({
    super.key,
  });
  static const String _ROUTE_NAME = "VideoPlayerScene";

  static String get ROUTE_NAME => "/$_ROUTE_NAME";

  static String get ARG_HEHE_VIDEO => "ARG_HEHE_VIDEO";

  static Map<String, dynamic> genArgs({
    required HeHeVideo heheVideo,
  }) =>
      {
        ARG_HEHE_VIDEO: heheVideo,
      };
  @override
  State<VideoDetailScene> createState() => _VideoDetailSceneState();
}

class _VideoDetailSceneState extends BaseSceneState<VideoDetailScene> {
  final _heheVideo =
      Get.arguments?[VideoDetailScene.ARG_HEHE_VIDEO] as HeHeVideo;
  final _onlineVideoPlayController = Get.find<OnlineVideoPlayerController>();
  bool get _isLoading => switch (_onlineVideoPlayController.playerState) {
        final OnlineVideoPlayerStateInitial _ => true,
        final OnlineVideoPlayerStateIdle _ => true,
        _ => false,
      };

  @override
  void initState() {
    super.initState();
    _onlineVideoPlayController.initializeVideo(
      _heheVideo.videoUrl,
      _heheVideo.imageUrl,
    );
  }

  @override
  void dispose() {
    _onlineVideoPlayController.dispose();
    super.dispose();
  }

  @override
  BaseStateWidgetBuilder<BaseState<StatefulWidget>> get widgetBuilder =>
      _VideoDetailSceneStateWidgetBuilder(this);
}
