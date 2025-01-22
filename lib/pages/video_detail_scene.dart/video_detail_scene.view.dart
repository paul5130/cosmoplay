part of 'video_detail_scene.dart';

class _VideoDetailSceneStateWidgetBuilder
    extends BaseSceneWidgetBuilder<_VideoDetailSceneState> {
  _VideoDetailSceneStateWidgetBuilder(super.state);

  @override
  Widget sceneWidget(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Video Player'),
        ),
        body: HeheVideoPlayer(
          videoUrl: state._heheVideo.videoUrl,
          thumbnailUrl: state._heheVideo.imageUrl,
        ),
      );
}
