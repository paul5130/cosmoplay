part of 'video_state_ui.dart';

class VideoStateErrorUI extends StatelessWidget {
  const VideoStateErrorUI({
    required this.errorState,
    super.key,
  });
  final VideoPlayerStateError errorState;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(errorState.error ?? 'Initialized Error'),
    );
  }
}
