import 'package:cosmoplay/network/model/hehe_video.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_video_list_state.freezed.dart';

@freezed
sealed class GetVideoListState with _$GetVideoListState {
  const GetVideoListState._();
  const factory GetVideoListState.initial() = GetVideoListStateInitial;
  const factory GetVideoListState.loading() = GetVideoListStateLoading;
  const factory GetVideoListState.success({
    required List<HeHeVideo> videos,
  }) = GetVideoListStateSuccess;
  const factory GetVideoListState.failure({
    String? error,
  }) = GetVideoListStateFailure;
}
