import 'package:cosmoplay/pages/video_detail_scene.dart/controllers/online_video_player_controller.dart';
import 'package:cosmoplay/pages/video_detail_scene.dart/controllers/online_video_player_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/base_state.dart';
import 'package:get/get.dart' hide Trans;
import 'package:video_player/video_player.dart';

part 'video_player_scene.view.dart';
part 'video_player_scene_binding.dart';

class VideoPlayerScene extends StatefulWidget {
  const VideoPlayerScene({
    super.key,
  });
  static const String _ROUTE_NAME = "VideoPlayerScene";

  static String get ROUTE_NAME => "/$_ROUTE_NAME";

  static String get ARG_URL => "ARG_URL";

  static Map<String, dynamic> genArgs({
    required Uri url,
  }) =>
      {
        ARG_URL: url,
      };
  @override
  State<VideoPlayerScene> createState() => _VideoPlayerSceneState();
}

class _VideoPlayerSceneState extends BaseSceneState<VideoPlayerScene> {
  final _onlineVideoPlayController = Get.find<OnlineVideoPlayerController>();
  final url = Uri.parse(
      'https://drive.usercontent.google.com/download?id=1RfEj5TtH6kQScoKtcxTqglFi7hCU__6t');
  final thumbnailUrl =
      'https://lh3.googleusercontent.com/d/1RfEj5TtH6kQScoKtcxTqglFi7hCU__6t';
  // if (monitoringState case final MonitoringStateMonitoring monitoringState) {
  bool get _isLoading => switch (_onlineVideoPlayController.playerState) {
        final OnlineVideoPlayerStateInitial _ => true,
        final OnlineVideoPlayerStateIdle _ => true,
        _ => false,
      };

  @override
  void initState() {
    super.initState();
    _onlineVideoPlayController.initializeVideo(
      url,
      thumbnailUrl,
    );
    // _onlineVideoPlayController.setVideoPlayerState =
    //     OnlineVideoPlayerState.idle();
    // _initializePlayer();
  }

  @override
  void dispose() {
    _onlineVideoPlayController.dispose();

    super.dispose();
  }

  @override
  BaseStateWidgetBuilder<BaseState<StatefulWidget>> get widgetBuilder =>
      _VideoPlayerSceneStateWidgetBuilder(this);
}
