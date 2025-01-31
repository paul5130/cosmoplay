import 'dart:convert';

import 'package:cosmoplay/managers/video_manager.dart';
import 'package:cosmoplay/network/model/hehe_video.dart';
import 'package:flutter/foundation.dart';

import 'package:get/get.dart' hide Trans;

import 'get_video_list_state.dart';

class GetVideoListService extends GetxService {
  final _rxState = Rx<GetVideoListState>(
    const GetVideoListState.initial(),
  );
  GetVideoListState get state => _rxState.value;
  late List<HeHeVideo> allVideos;
  final VideoManager videoManager = Get.find<VideoManager>();

  Future<void> loadVideos() async {
    _rxState.value = const GetVideoListState.loading();
    try {
      String? response = await videoManager.getVideoListJsonFromRemote();
      if (response != null) {
        await videoManager.saveVideoListToLocal(response);
      } else {
        response = await videoManager.getVideoListJsonFromLocal();
      }
      if (response == null) {
        _rxState.value =
            GetVideoListState.failure(error: 'Cannot fetch video list');
        return;
      }
      final videoList = _parseVideos(response);
      _setSuccessState(videoList);
    } catch (e, stacktrace) {
      debugPrint('Failed to get video list: $e');
      debugPrintStack(stackTrace: stacktrace);
      _rxState.value = GetVideoListState.failure(error: e.toString());
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

  List<HeHeVideo> _parseVideos(String response) {
    final List<dynamic> jsonData = json.decode(response);
    return jsonData.map((data) => HeHeVideo.fromJson(data)).toList();
  }

  void _setSuccessState(List<HeHeVideo> videoList) {
    allVideos = videoList;
    _rxState.value = GetVideoListState.success(videoList: videoList);
  }
}
