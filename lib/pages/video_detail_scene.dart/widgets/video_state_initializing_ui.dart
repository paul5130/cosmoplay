part of 'video_state_ui.dart';

class VideoStateIntializingUI extends StatelessWidget {
  const VideoStateIntializingUI({
    required this.state,
    super.key,
  });
  final VideoPlayerStateInitializing state;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Image.network(
            state.thumbnailUrl,
            fit: BoxFit.contain,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        Center(
          child: CircularProgressIndicator(),
        ),
      ],
    );
  }
}
