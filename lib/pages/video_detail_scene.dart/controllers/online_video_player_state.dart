import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'online_video_player_state.freezed.dart';

@freezed
sealed class OnlineVideoPlayerState with _$OnlineVideoPlayerState {
  const OnlineVideoPlayerState._();
  const factory OnlineVideoPlayerState.idle() = OnlineVideoPlayerStateIdle;
  const factory OnlineVideoPlayerState.initial({
    required String videoUrl,
    required String thumbnailUrl,
  }) = OnlineVideoPlayerStateInitial;
  const factory OnlineVideoPlayerState.initialized({
    required Uri videoUrl,
    required String thumbnailUrl,
    required Duration length,
  }) = OnlineVideoPlayerStateInitialized;
  const factory OnlineVideoPlayerState.playing({
    required Uri videoUrl,
    required Duration currentPosition,
  }) = OnlineVideoPlayerStatePlaying;
  const factory OnlineVideoPlayerState.paused({
    required Uri videoUrl,
    required Duration currentPosition,
  }) = OnlineVideoPlayerStatePaused;
  const factory OnlineVideoPlayerState.buffering({
    required Uri videoUrl,
    required Duration currentPosition,
  }) = OnlineVideoPlayerStateBuffering;
  const factory OnlineVideoPlayerState.completed({
    required Uri videoUrl,
  }) = OnlineVideoPlayerStateCompleted;
  const factory OnlineVideoPlayerState.error(
      {required String videoUrl,
      required String thumbnailUrl,
      String? error}) = OnlineVideoPlayerStateError;
}
