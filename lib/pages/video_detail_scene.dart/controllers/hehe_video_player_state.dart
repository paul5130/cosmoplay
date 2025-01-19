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
    required Uri videoUrl,
    required String thumbnailUrl,
    required Duration length,
  }) = HeHeVideoPlayerStateInitialized;
  const factory HeHeVideoPlayerState.playing({
    required Uri videoUrl,
    required Duration currentPosition,
  }) = HeHeVideoPlayerStatePlaying;
  const factory HeHeVideoPlayerState.paused({
    required Uri videoUrl,
    required Duration currentPosition,
  }) = HeHeVideoPlayerStatePaused;
  const factory HeHeVideoPlayerState.buffering({
    required Uri videoUrl,
    required Duration currentPosition,
  }) = HeHeVideoPlayerStateBuffering;
  const factory HeHeVideoPlayerState.completed({
    required Uri videoUrl,
  }) = HeHeVideoPlayerStateCompleted;
  const factory HeHeVideoPlayerState.error(
      {required String videoUrl,
      required String thumbnailUrl,
      String? error}) = HeHeVideoPlayerStateError;
}
