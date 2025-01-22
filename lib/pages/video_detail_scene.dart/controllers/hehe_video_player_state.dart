import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'hehe_video_player_state.freezed.dart';

@freezed
sealed class HeHeVideoPlayerState with _$HeHeVideoPlayerState {
  const HeHeVideoPlayerState._();
  const factory HeHeVideoPlayerState.idle() = HeHeVideoPlayerStateIdle;
  const factory HeHeVideoPlayerState.initial({
    required String videoUrl,
    required String thumbnailUrl,
  }) = HeHeVideoPlayerStateInitial;
  const factory HeHeVideoPlayerState.initialized({
    required Duration length,
  }) = HeHeVideoPlayerStateInitialized;
  const factory HeHeVideoPlayerState.playing({
    required Duration currentPosition,
  }) = HeHeVideoPlayerStatePlaying;
  const factory HeHeVideoPlayerState.paused({
    required Duration currentPosition,
  }) = HeHeVideoPlayerStatePaused;
  const factory HeHeVideoPlayerState.buffering() =
      HeHeVideoPlayerStateBuffering;
  const factory HeHeVideoPlayerState.completed() =
      HeHeVideoPlayerStateCompleted;
  const factory HeHeVideoPlayerState.error({
    String? error,
  }) = HeHeVideoPlayerStateError;
}
