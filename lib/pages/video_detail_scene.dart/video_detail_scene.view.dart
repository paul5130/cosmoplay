part of 'video_detail_scene.dart';

class _VideoDetailSceneStateWidgetBuilder
    extends BaseSceneWidgetBuilder<_VideoDetailSceneState> {
  _VideoDetailSceneStateWidgetBuilder(super.state);

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
                          state._heheVideo.imageUrl,
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
