part of 'video_detail_scene.dart';

class _VideoDetailSceneStateWidgetBuilder
    extends BaseSceneWidgetBuilder<_VideoDetailSceneState> {
  _VideoDetailSceneStateWidgetBuilder(super.state);

  @override
  Widget sceneWidget(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Obx(
            () => Text(
              state._videoPlayController.title,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                state._videoPlayController.playPrevious();
                debugPrint('previous');
              },
              icon: Icon(
                Icons.skip_previous,
              ),
            ),
            IconButton(
              onPressed: () {
                state._videoPlayController.playNext();
                debugPrint('next');
              },
              icon: Icon(
                Icons.skip_next,
              ),
            ),
          ],
        ),
        body: Container(
          color: Colors.black,
          child: Obx(
            () => switch (state
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
