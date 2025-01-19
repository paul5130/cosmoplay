import 'package:cosmoplay/network/model/hehe_video.dart';
import 'package:cosmoplay/pages/video_detail_scene.dart/controllers/hehe_video_player_controller.dart';
import 'package:cosmoplay/pages/video_detail_scene.dart/controllers/hehe_video_player_state.dart';
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

  @override
  State<VideoDetailScene> createState() => _VideoDetailSceneState();
}

class _VideoDetailSceneState extends BaseSceneState<VideoDetailScene> {
  final _heheVideo = Get.arguments as HeHeVideo;
  final _onlineVideoPlayController = Get.find<HeHeVideoPlayerController>();
  bool get _isLoading => switch (_onlineVideoPlayController.playerState) {
        final HeHeVideoPlayerStateInitial _ => true,
        final HeHeVideoPlayerStateIdle _ => true,
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
