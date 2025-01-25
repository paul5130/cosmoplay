import 'package:flutter/material.dart';

import 'package:get/get.dart' hide Trans;
import 'package:video_player/video_player.dart';

import 'controllers/hehe_video_player_controller.dart';
import 'controllers/hehe_video_player_state.dart';

class HeheVideoPlayer extends StatefulWidget {
  const HeheVideoPlayer({
    required this.videoId,
    required this.videoUrl,
    required this.thumbnailUrl,
    super.key,
  });
  final String videoId;
  final String videoUrl;
  final String thumbnailUrl;
  @override
  State<HeheVideoPlayer> createState() => _HeheVideoPlayerState();
}

class _HeheVideoPlayerState extends State<HeheVideoPlayer>
    with TickerProviderStateMixin, WidgetsBindingObserver {
  final _onlineVideoPlayController = Get.find<HeHeVideoPlayerController>();
  late Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initializeVideoPlayerFuture = _onlineVideoPlayController.setupVideo(
      widget.videoId,
      widget.videoUrl,
      widget.thumbnailUrl,
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _onlineVideoPlayController.dispose();
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
  Widget build(BuildContext context) => Container(
        color: Colors.black,
        child: FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (
            context,
            snapshot,
          ) =>
              Obx(
            () => Stack(
              alignment: Alignment.center,
              children: [
                if (_onlineVideoPlayController.playerState
                    is HeHeVideoPlayerStateError) ...[
                  Center(
                    child: Text(
                      'error: ${(_onlineVideoPlayController.playerState as HeHeVideoPlayerStateError).error}',
                    ),
                  ),
                ],
                if (_onlineVideoPlayController.playerState
                        is HeHeVideoPlayerStateInitialWithLocal ||
                    _onlineVideoPlayController.playerState
                        is HeHeVideoPlayerStateInitialWithNetwork ||
                    _onlineVideoPlayController.playerState
                        is HeHeVideoPlayerStateBuffering ||
                    _onlineVideoPlayController.playerState
                        is HeHeVideoPlayerStateIdle ||
                    _onlineVideoPlayController.playerState
                        is HeHeVideoPlayerStateInitialized) ...[
                  Align(
                    alignment: Alignment.center,
                    child: Image.network(
                      widget.thumbnailUrl,
                      fit: BoxFit.contain,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                  Center(
                    child: CircularProgressIndicator(),
                  )
                ],
                if (snapshot.connectionState == ConnectionState.done &&
                    (_onlineVideoPlayController.playerState
                            is HeHeVideoPlayerStatePaused ||
                        _onlineVideoPlayController.playerState
                            is HeHeVideoPlayerStateCompleted ||
                        _onlineVideoPlayController.playerState
                            is HeHeVideoPlayerStatePlaying)) ...[
                  Align(
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              AspectRatio(
                                aspectRatio: _onlineVideoPlayController
                                    .videoPlayerController.value.aspectRatio,
                                child: VideoPlayer(
                                  _onlineVideoPlayController
                                      .videoPlayerController,
                                ),
                              ),
                              Slider(
                                value: _onlineVideoPlayController
                                    .videoPlayerController
                                    .value
                                    .position
                                    .inMilliseconds
                                    .toDouble(),
                                max: _onlineVideoPlayController
                                    .videoPlayerController
                                    .value
                                    .duration
                                    .inMilliseconds
                                    .toDouble(),
                                onChanged: (value) {
                                  final seekPosition =
                                      Duration(milliseconds: value.toInt());
                                  _onlineVideoPlayController
                                      .videoPlayerController
                                      .seekTo(seekPosition);
                                },
                                activeColor: Colors.white,
                                inactiveColor: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: AnimatedOpacity(
                            opacity: (_onlineVideoPlayController.playerState
                                    is HeHeVideoPlayerStatePlaying)
                                ? 0.2
                                : 1.0,
                            duration: const Duration(milliseconds: 300),
                            child: IconButton(
                              iconSize: 64,
                              icon: Icon(
                                _onlineVideoPlayController.playerState
                                        is HeHeVideoPlayerStatePlaying
                                    ? Icons.pause
                                    : Icons.play_arrow,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                if (_onlineVideoPlayController.playerState
                                    is HeHeVideoPlayerStatePlaying) {
                                  _onlineVideoPlayController.pause();
                                } else {
                                  _onlineVideoPlayController.resume();
                                }
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      );
}
