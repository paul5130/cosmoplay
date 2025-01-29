import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'video_player_state.freezed.dart';

@freezed
sealed class VideoPlayerState with _$VideoPlayerState {
  const VideoPlayerState._();
  const factory VideoPlayerState.idle() = VideoPlayerStateIdle;
  const factory VideoPlayerState.initializing({
    required String thumbnailUrl,
  }) = VideoPlayerStateInitializing;
  const factory VideoPlayerState.initialized() = VideoPlayerStateInitialized;
  const factory VideoPlayerState.completed() = VideoPlayerStateCompleted;
  const factory VideoPlayerState.error({
    String? error,
  }) = VideoPlayerStateError;
}
