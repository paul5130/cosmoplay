import 'package:cosmoplay/network/model/hehe_video.dart';
import 'package:cosmoplay/repositories/video_repository/local_video_list_repository.dart';
import 'package:cosmoplay/repositories/video_repository/remote_video_list_repository.dart';
import 'package:cosmoplay/repositories/video_repository/video_list_repository.dart';
import 'package:cosmoplay/repositories/video_repository/video_list_with_fallback_repository.dart';
import 'package:flutter/foundation.dart';

import 'package:get/get.dart' hide Trans;

import 'get_video_list_state.dart';

class GetVideoListService extends GetxService {
  final _rxState = Rx<GetVideoListState>(
    const GetVideoListState.initial(),
  );
  GetVideoListState get state => _rxState.value;
  late List<HeHeVideo> allVideos;
  final VideoListRepository _repository = VideoListWithFallbackRepository(
    primaryRepository: RemoteVideoListRepository(),
    fallbackRepository: LocalVideoListRepository(),
  );

  Future<void> loadVideos() async {
    _rxState.value = const GetVideoListState.loading();
    try {
      allVideos = await _repository.fetchVideos();
      _rxState.value = GetVideoListState.success(videoList: allVideos);
    } catch (error) {
      debugPrint('Failed to fetch video list: $error');
      _rxState.value = GetVideoListState.failure(
        error: error.toString(),
      );
    }
  }

  void filterVideos(String query) {
    if (state is! GetVideoListStateSuccess) return;
    if (query.trim().isEmpty) {
      _rxState.value = GetVideoListState.success(
        videoList: allVideos,
      );
    } else {
      final filteredVideos = allVideos
          .where(
            (video) => video.name.toLowerCase().contains(
                  query.toLowerCase(),
                ),
          )
          .toList();
      _rxState.value = GetVideoListState.success(
        videoList: filteredVideos,
      );
    }
  }
}
