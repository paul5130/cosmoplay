import 'package:audio_service/audio_service.dart';
import 'package:flutter/foundation.dart';
import 'package:just_audio/just_audio.dart';

class HeHeAudioHandler extends BaseAudioHandler {
  final _audioPlayer = AudioPlayer();
  final Uri uri;
  HeHeAudioHandler({required this.uri}) {
    _audioPlayer.playerStateStream.listen(
      (state) {
        playbackState.add(
          PlaybackState(
            playing: state.playing,
            controls: [
              MediaControl.play,
              MediaControl.pause,
              MediaControl.stop,
            ],
          ),
        );
      },
    );
  }

  Future<void> setMediaItem(
    Uri uri, {
    Duration position = Duration.zero,
  }) async {
    try {
      if (uri.scheme == 'file') {
        await _audioPlayer.setFilePath(uri.toFilePath());
      } else {
        await _audioPlayer.setUrl(uri.toString());
      }
      await _audioPlayer.seek(position);
    } catch (e) {
      debugPrint('Failed to play music $e');
    }
  }

  Duration getCurrentPosition() => _audioPlayer.position;

  @override
  Future<void> play() async => _audioPlayer.play();

  @override
  Future<void> stop() async => _audioPlayer.stop();
  @override
  Future<void> pause() async => _audioPlayer.pause();
}
