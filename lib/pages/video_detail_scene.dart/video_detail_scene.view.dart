part of 'video_detail_scene.dart';

class _VideoDetailSceneStateWidgetBuilder
    extends BaseSceneWidgetBuilder<_VideoDetailSceneState> {
  _VideoDetailSceneStateWidgetBuilder(super.state);

  @override
  Widget sceneWidget(BuildContext context) => Obx(
        () => Scaffold(
          appBar: state._videoPlayController.isFullScreen
              ? null
              : AppBar(
                  title: Text(
                    state._videoPlayController.title,
                  ),
                ),
          body: Container(
            color: Colors.black,
            child: switch (state
                ._videoPlayController.videoPlayerService.videoPlayerState) {
              final VideoPlayerStateIdle _ => Container(),
              final VideoPlayerStateInitializing stateIntializing =>
                VideoStateIntializingUI(state: stateIntializing),
              final VideoPlayerStateInitialized _ =>
                VideoStateInitializedUI(controller: state._videoPlayController),
              final VideoPlayerStateError stateError =>
                VideoStateErrorUI(errorState: stateError),
            },
          ),
        ),
      );
}
