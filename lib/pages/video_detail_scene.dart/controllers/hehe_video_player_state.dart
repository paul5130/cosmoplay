// import 'dart:io';

// import 'package:flutter/foundation.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// part 'hehe_video_player_state.freezed.dart';

// @freezed
// sealed class HeHeVideoPlayerState with _$HeHeVideoPlayerState {
//   const HeHeVideoPlayerState._();
//   const factory HeHeVideoPlayerState.idle() = HeHeVideoPlayerStateIdle;
//   const factory HeHeVideoPlayerState.initialWithNetwork({
//     required String videoId,
//     required String videoUrl,
//     required String thumbnailUrl,
//   }) = HeHeVideoPlayerStateInitialWithNetwork;
//   const factory HeHeVideoPlayerState.initialWithLocal({
//     required String videoId,
//     required File file,
//     required String thumbnailUrl,
//   }) = HeHeVideoPlayerStateInitialWithLocal;
//   const factory HeHeVideoPlayerState.initialized({
//     required Duration length,
//   }) = HeHeVideoPlayerStateInitialized;
//   const factory HeHeVideoPlayerState.playing({
//     required Duration currentPosition,
//   }) = HeHeVideoPlayerStatePlaying;
//   const factory HeHeVideoPlayerState.paused({
//     required Duration currentPosition,
//   }) = HeHeVideoPlayerStatePaused;
//   const factory HeHeVideoPlayerState.buffering() =
//       HeHeVideoPlayerStateBuffering;
//   const factory HeHeVideoPlayerState.completed() =
//       HeHeVideoPlayerStateCompleted;
//   const factory HeHeVideoPlayerState.error({
//     String? error,
//   }) = HeHeVideoPlayerStateError;
// }
