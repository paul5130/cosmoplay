part of 'video_player_scene.dart';

class _VideoPlayerSceneStateWidgetBuilder
    extends BaseSceneWidgetBuilder<_VideoPlayerSceneState> {
  _VideoPlayerSceneStateWidgetBuilder(super.state);

  @override
  Widget sceneWidget(BuildContext context) => Obx(
        () => Scaffold(
          appBar: AppBar(
            title: Text('Video Player'),
          ),
          body: Center(
            child: state._isLoading
                ? Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Image.network(
                          state.thumbnailUrl,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Center(
                        child: CircularProgressIndicator(),
                      ),
                    ],
                  )
                : AspectRatio(
                    aspectRatio: state._onlineVideoPlayController
                        .videoPlayerController.value.aspectRatio,
                    child: VideoPlayer(
                      state._onlineVideoPlayController.videoPlayerController,
                    ),
                  ),
          ),
        ),
      );
}
