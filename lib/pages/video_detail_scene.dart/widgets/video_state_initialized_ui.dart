part of 'video_state_ui.dart';

class VideoStateInitializedUI extends StatelessWidget {
  const VideoStateInitializedUI({
    required this.controller,
    super.key,
  });
  final HeHeVideoPlayerController controller;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.isFullScreen
          ? _VideoPlayerFullScreenUI(
              controller: controller,
            )
          : _VideoPlayerNormalUI(
              controller: controller,
            ),
    );
  }
}

class _VideoPlayerNormalUI extends StatelessWidget {
  const _VideoPlayerNormalUI({
    required this.controller,
  });
  final HeHeVideoPlayerController controller;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AspectRatio(
                  aspectRatio: controller
                      .videoPlayerService.controller!.value.aspectRatio,
                  child: VideoPlayer(
                    controller.videoPlayerService.controller!,
                  ),
                ),
                Obx(
                  () => Slider(
                    value: controller
                        .videoPlayerService.rxPosition.value.inMilliseconds
                        .toDouble(),
                    max: controller.videoPlayerService.duration.inMilliseconds
                        .toDouble(),
                    onChanged: (value) {
                      final seekPosition =
                          Duration(milliseconds: value.toInt());
                      controller.videoPlayerService.controller!
                          .seekTo(seekPosition);
                    },
                    activeColor: Colors.white,
                    inactiveColor: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: AnimatedOpacity(
              opacity: controller.videoPlayerService.isPlaying ? 0.2 : 1.0,
              duration: const Duration(milliseconds: 300),
              child: Obx(
                () => IconButton(
                  iconSize: 64,
                  icon: Icon(
                    controller.videoPlayerService.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    if (controller.videoPlayerService.isPlaying) {
                      controller.pause();
                    } else {
                      controller.resume();
                    }
                  },
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: controller.playPrevious,
                    icon: const Icon(
                      Icons.skip_previous,
                      color: Colors.white,
                    ),
                    iconSize: 48,
                  ),
                  IconButton(
                    onPressed: controller.playNext,
                    icon: const Icon(
                      Icons.skip_next,
                      color: Colors.white,
                    ),
                    iconSize: 48,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _VideoPlayerFullScreenUI extends StatelessWidget {
  const _VideoPlayerFullScreenUI({
    required this.controller,
  });
  final HeHeVideoPlayerController controller;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: AspectRatio(
              aspectRatio:
                  controller.videoPlayerService.controller!.value.aspectRatio,
              child: VideoPlayer(controller.videoPlayerService.controller!),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Obx(
              () => IconButton(
                iconSize: 64,
                icon: Icon(
                  controller.videoPlayerService.isPlaying
                      ? Icons.pause
                      : Icons.play_arrow,
                  color: Colors.white,
                ),
                onPressed: () {
                  controller.videoPlayerService.isPlaying
                      ? controller.pause()
                      : controller.resume();
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    iconSize: 48,
                    icon: const Icon(Icons.skip_previous, color: Colors.white),
                    onPressed: controller.playPrevious,
                  ),
                  IconButton(
                    iconSize: 48,
                    icon: const Icon(Icons.skip_next, color: Colors.white),
                    onPressed: controller.playNext,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
