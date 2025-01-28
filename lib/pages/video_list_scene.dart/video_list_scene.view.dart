part of 'video_list_scene.dart';

class _VideoListSceneStateWidgetBuilder
    extends BaseSceneWidgetBuilder<_VideoListSceneState> {
  _VideoListSceneStateWidgetBuilder(super.state);

  @override
  Widget sceneWidget(BuildContext context) => Obx(
        () => Scaffold(
          appBar: AppBar(
            title: Text('Search Videos'),
          ),
          body: state._getVideoListController.state.when(
            initial: () => Center(
              child: Text('No Videos loaded'),
            ),
            loading: () => Center(
              child: CircularProgressIndicator(),
            ),
            success: (videos) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'search videos...',
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onChanged: state._getVideoListController.filterVideos,
                  ),
                ),
                Expanded(
                  child: VideoList(
                    videoList: videos,
                    onVideoDetailScene: state._toVideoDetailScene,
                  ),
                )
              ],
            ),
            failure: (error) => Center(
              child: Text('Error: $error'),
            ),
          ),
        ),
      );
}
