part of 'video_list_scene.dart';

class _VideoListSceneStateWidgetBuilder
    extends BaseSceneWidgetBuilder<_VideoListSceneState> {
  _VideoListSceneStateWidgetBuilder(super.state);

  @override
  Widget sceneWidget(BuildContext context) => Obx(
        () => Scaffold(
          appBar: AppBar(
            title: Text('Search Videos'),
            actions: [
              TextButton(
                onPressed: () => state._toVideoDetailScene(
                  state._getVideoListController.allVideos,
                ),
                child: Text(
                  'Random Play All',
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              )
            ],
          ),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: state._getVideoListController.state.when(
              initial: () => Center(
                child: Text('No Videos loaded'),
              ),
              loading: () => Center(
                child: CircularProgressIndicator(),
              ),
              success: (videoList) => Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    TextField(
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
                    const SizedBox(height: 8),
                    Expanded(
                      child: VideoGridView(
                        videoList: videoList,
                        onVideoDetailScene: (video) {
                          state._toVideoDetailScene([video]);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              failure: (error) => Center(
                child: Text('Error: $error'),
              ),
            ),
          ),
        ),
      );
}
