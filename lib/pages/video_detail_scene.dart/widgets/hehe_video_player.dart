import 'package:flutter/material.dart';

import 'package:get/get.dart' hide Trans;
import 'package:video_player/video_player.dart';

import '../controllers/hehe_video_player_controller.dart';
import '../controllers/hehe_video_player_state.dart';

class HeheVideoPlayer extends StatefulWidget {
  const HeheVideoPlayer({
    required this.videoUrl,
    required this.thumbnailUrl,
    super.key,
  });
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
    _initializeVideoPlayerFuture = _onlineVideoPlayController.initializeVideo(
      widget.videoUrl,
      widget.thumbnailUrl,
    );
  }

  @override
  void dispose() {
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
            () => switch (_onlineVideoPlayController.playerState) {
              HeHeVideoPlayerStateIdle() => loadingView(),
              HeHeVideoPlayerStateInitial() => loadingView(),
              final HeHeVideoPlayerStateInitialized state =>
                playerView(snapshot, state),
              final HeHeVideoPlayerStatePlaying state =>
                playerView(snapshot, state),
              final HeHeVideoPlayerStatePaused state =>
                playerView(snapshot, state),
              HeHeVideoPlayerStateBuffering() => loadingView(),
              final HeHeVideoPlayerStateCompleted state =>
                playerView(snapshot, state),
              final HeHeVideoPlayerStateError state => Center(
                  child: Text('error: ${state.error}'),
                ),
            },
          ),
        ),
        // child: Obx(
        //   () => switch (_onlineVideoPlayController.playerState) {
        //     HeHeVideoPlayerState.error => Center(
        //         child: Text('error'),
        //       ),
        //     _ => Column(
        //         children: [
        //           AspectRatio(
        //             aspectRatio: _onlineVideoPlayController
        //                 .videoPlayerController.value.aspectRatio,
        //             child: VideoPlayer(
        //               _onlineVideoPlayController.videoPlayerController,
        //             ),
        //           ),
        //           if (_onlineVideoPlayController.playerState
        //               is HeHeVideoPlayerStateBuffering) ...[
        //             Center(
        //               child: CircularProgressIndicator(),
        //             ),
        //           ],
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               IconButton(
        //                 icon: Icon(Icons.play_arrow),
        //                 onPressed: () {
        //                   _onlineVideoPlayController.resume();
        //                 },
        //               ),
        //               IconButton(
        //                 icon: Icon(Icons.pause),
        //                 onPressed: () {
        //                   _onlineVideoPlayController.pause();
        //                 },
        //               ),
        //               IconButton(
        //                 icon: Icon(Icons.stop),
        //                 onPressed: () {
        //                   _onlineVideoPlayController.stop();
        //                 },
        //               ),
        //             ],
        //           ),
        //           Slider(
        //             value: _onlineVideoPlayController
        //                 .videoPlayerController.value.position.inSeconds
        //                 .toDouble(),
        //             min: 0,
        //             max: _onlineVideoPlayController
        //                 .videoPlayerController.value.duration.inSeconds
        //                 .toDouble(),
        //             onChanged: (value) {
        //               _onlineVideoPlayController
        //                   .seekTo(Duration(seconds: value.toInt()));
        //             },
        //           ),
        //         ],
        //       ),
        //   },
        // ),
      );
  Widget loadingView() => Stack(
        alignment: Alignment.center,
        children: [
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
          ),
        ],
      );

  Widget playerView(
    AsyncSnapshot<void> snapshot,
    HeHeVideoPlayerState state,
  ) {
    if (snapshot.connectionState == ConnectionState.done) {
      return Column(
        children: [
          AspectRatio(
            aspectRatio: _onlineVideoPlayController
                .videoPlayerController.value.aspectRatio,
            child: VideoPlayer(
              _onlineVideoPlayController.videoPlayerController,
            ),
          ),
          if (_onlineVideoPlayController.playerState
              is HeHeVideoPlayerStateBuffering) ...[
            Center(
              child: CircularProgressIndicator(),
            ),
          ],
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (_onlineVideoPlayController.playerState
                  is HeHeVideoPlayerStatePlaying) ...[
                IconButton(
                  icon: Icon(Icons.pause),
                  onPressed: () {
                    _onlineVideoPlayController.pause();
                  },
                ),
              ],
              if (_onlineVideoPlayController.playerState
                      is HeHeVideoPlayerStatePaused ||
                  _onlineVideoPlayController.playerState
                      is HeHeVideoPlayerStateCompleted) ...[
                IconButton(
                  icon: Icon(Icons.play_arrow),
                  onPressed: () {
                    _onlineVideoPlayController.resume();
                  },
                ),
              ],
            ],
          ),
          Slider(
            value: _onlineVideoPlayController
                .videoPlayerController.value.position.inSeconds
                .toDouble(),
            min: 0,
            max: _onlineVideoPlayController
                .videoPlayerController.value.duration.inSeconds
                .toDouble(),
            onChanged: (value) {
              _onlineVideoPlayController
                  .seekTo(Duration(seconds: value.toInt()));
            },
          ),
        ],
      );
    } else {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
