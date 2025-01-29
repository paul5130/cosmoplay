import 'package:cosmoplay/pages/video_detail_scene.dart/services/video_download_service.dart';
import 'package:cosmoplay/pages/video_detail_scene.dart/widgets/video_state_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/base_state.dart';
import 'package:get/get.dart' hide Trans;

import '../../network/model/hehe_video.dart';
import 'controllers/hehe_video_player_controller.dart';
import 'controllers/video_player_state.dart';
part 'video_detail_scene_binding.dart';
part 'video_detail_scene.view.dart';

class VideoDetailScene extends StatefulWidget {
  const VideoDetailScene({super.key});

  @override
  State<VideoDetailScene> createState() => _VideoDetailSceneState();
}

class _VideoDetailSceneState extends BaseSceneState<VideoDetailScene>
    with TickerProviderStateMixin, WidgetsBindingObserver {
  final _heheVideos = Get.arguments as List<HeHeVideo>;
  final _videoPlayController = Get.find<HeHeVideoPlayerController>();

  @override
  void initState() {
    super.initState();
    _videoPlayController.setVideoList(_heheVideos);
    _videoPlayController.setupVideo(
      _heheVideos.first,
    );

    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    _videoPlayController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.resumed:
        _videoPlayController.resume();
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.hidden:
        _videoPlayController.pause();
        break;
      default:
        break;
    }
  }

  @override
  BaseStateWidgetBuilder<BaseState<StatefulWidget>> get widgetBuilder =>
      _VideoDetailSceneStateWidgetBuilder(this);
}
