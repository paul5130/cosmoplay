part of 'video_detail_scene.dart';

class _VideoDetailSceneStateWidgetBuilder
    extends BaseSceneWidgetBuilder<_VideoDetailSceneState> {
  _VideoDetailSceneStateWidgetBuilder(super.state);

  @override
  Widget sceneWidget(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(state._heheVideo.name),
        ),
        body: Container(
          color: Colors.black,
          child: FutureBuilder(
            future: state._initializeVideoPlayerFuture,
            builder: (
              context,
              snapshot,
            ) =>
                switch (state
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
