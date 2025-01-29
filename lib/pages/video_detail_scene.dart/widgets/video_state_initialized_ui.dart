part of 'video_state_ui.dart';

class VideoStateInitializedUI extends StatelessWidget {
  const VideoStateInitializedUI({
    required this.controller,
    super.key,
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
                    value: controller.videoPlayerService.position.inMilliseconds
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
          )
        ],
      ),
    );
  }
}
