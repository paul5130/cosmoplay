import 'dart:convert';

import 'package:cosmoplay/network/model/hehe_video.dart';
import 'package:cosmoplay/pages/video_list_scene.dart/controllers/get_video_list_state.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart' hide Trans;

class GetVideoListController extends GetxService {
  final _rxState = Rx<GetVideoListState>(
    const GetVideoListState.initial(),
  );
  GetVideoListState get state => _rxState.value;
  late List<HeHeVideo> allVideos;

  Future<void> loadVideos() async {
    _rxState.value = const GetVideoListState.loading();
    try {
      final String response =
          await rootBundle.loadString('assets/data/mv_list.json');
      final List<dynamic> jsonData = json.decode(response);
      final videos = jsonData
          .map(
            (data) => HeHeVideo.fromJson(
              data,
            ),
          )
          .toList();
      allVideos = videos;
      _rxState.value = GetVideoListState.success(
        videos: videos,
      );
    } catch (e) {
      _rxState.value = GetVideoListState.failure(
        error: e.toString(),
      );
    }
  }

  void filterVideos(String query) {
    if (state is! GetVideoListStateSuccess) return;
    if (query.trim().isEmpty) {
      _rxState.value = GetVideoListState.success(
        videos: allVideos,
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
        videos: filteredVideos,
      );
    }
  }
}
