part of 'video_detail_scene.dart';

class _VideoDetailSceneStateWidgetBuilder
    extends BaseSceneWidgetBuilder<_VideoDetailSceneState> {
  _VideoDetailSceneStateWidgetBuilder(super.state);

  @override
  Widget sceneWidget(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Video Detail'),
        ),
        body: Container(
          color: Colors.black,
          child: FutureBuilder(
            future: state._initializeVideoPlayerFuture,
            builder: (
              context,
              snapshot,
            ) =>
                Obx(() => state._onlineVideoPlayController.videoService
                            .isInitialized
                        ? Align(
                            alignment: Alignment.center,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      AspectRatio(
                                        aspectRatio: state
                                            ._onlineVideoPlayController
                                            .videoService
                                            .controller!
                                            .value
                                            .aspectRatio,
                                        child: VideoPlayer(
                                          state._onlineVideoPlayController
                                              .videoService.controller!,
                                        ),
                                      ),
                                      Slider(
                                        value: state
                                            ._onlineVideoPlayController
                                            .videoService
                                            .controller!
                                            .value
                                            .position
                                            .inMilliseconds
                                            .toDouble(),
                                        max: state
                                            ._onlineVideoPlayController
                                            .videoService
                                            .controller!
                                            .value
                                            .duration
                                            .inMilliseconds
                                            .toDouble(),
                                        onChanged: (value) {
                                          final seekPosition = Duration(
                                              milliseconds: value.toInt());
                                          state._onlineVideoPlayController
                                              .videoService.controller!
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
                                    opacity: state._onlineVideoPlayController
                                            .isPlaying.value
                                        ? 0.2
                                        : 1.0,
                                    duration: const Duration(milliseconds: 300),
                                    child: IconButton(
                                      iconSize: 64,
                                      icon: Icon(
                                        state._onlineVideoPlayController
                                                .isPlaying.value
                                            ? Icons.pause
                                            : Icons.play_arrow,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        if (state._onlineVideoPlayController
                                            .isPlaying.value) {
                                          state._onlineVideoPlayController
                                              .pause();
                                        } else {
                                          state._onlineVideoPlayController
                                              .resume();
                                        }
                                      },
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        : Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Image.network(
                                  state._heheVideo.imageUrl,
                                  fit: BoxFit.contain,
                                  width: double.infinity,
                                  height: double.infinity,
                                ),
                              ),
                              Center(
                                child: CircularProgressIndicator(),
                              ),
                            ],
                          )
                    //  Stack(
                    //   alignment: Alignment.center,
                    //   children: [

                    //     if (state
                    //         ._onlineVideoPlayController.videoService.isInitialized)

                    //     // ],
                    //   ],
                    // ),
                    ),
          ),
        ),
      );
}
