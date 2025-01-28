import 'package:cosmoplay/pages/video_detail_scene.dart/services/video_download_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/base_state.dart';
import 'package:get/get.dart' hide Trans;
import 'package:video_player/video_player.dart';

import '../../network/model/hehe_video.dart';
import 'controllers/hehe_video_player_controller.dart';
part 'video_detail_scene_binding.dart';
part 'video_detail_scene.view.dart';

class VideoDetailScene extends StatefulWidget {
  const VideoDetailScene({super.key});

  @override
  State<VideoDetailScene> createState() => _VideoDetailSceneState();
}

class _VideoDetailSceneState extends BaseSceneState<VideoDetailScene>
    with TickerProviderStateMixin, WidgetsBindingObserver {
  final _heheVideo = Get.arguments as HeHeVideo;
  final _onlineVideoPlayController = Get.find<HeHeVideoPlayerController>();
  late Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    super.initState();
    _initializeVideoPlayerFuture = _onlineVideoPlayController.setupVideo(
      _heheVideo.id,
      _heheVideo.videoUrl,
    );
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    _onlineVideoPlayController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.resumed:
        _onlineVideoPlayController.resume();
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.hidden:
        _onlineVideoPlayController.pause();
        break;
      default:
        break;
    }
  }

  @override
  BaseStateWidgetBuilder<BaseState<StatefulWidget>> get widgetBuilder =>
      _VideoDetailSceneStateWidgetBuilder(this);
}
