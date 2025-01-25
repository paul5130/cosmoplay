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
          body: Column(
            mainAxisSize: MainAxisSize.min,
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
              state._getVideoListController.state.when(
                initial: () => Center(
                  child: Text('No Videos loaded'),
                ),
                loading: () => CircularProgressIndicator(),
                success: (videos) {
                  if (videos.isEmpty) {
                    return Center(
                      child: Text('No videos found'),
                    );
                  } else {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: videos.length,
                        itemBuilder: (context, index) => VideoCell(
                          heheVideo: videos[index],
                          onPressed: state._toVideoDetailScene,
                        ),
                      ),
                    );
                  }
                },
                failure: (error) => Center(child: Text('Error: $error')),
              )
            ],
          ),
        ),
      );
}
