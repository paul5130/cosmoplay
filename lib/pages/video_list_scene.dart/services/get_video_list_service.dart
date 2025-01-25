import 'dart:convert';
import 'dart:io';

import 'package:cosmoplay/network/model/hehe_video.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart' hide Trans;
import 'package:path_provider/path_provider.dart';

import 'get_video_list_state.dart';

class GetVideoListService extends GetxService {
  final _rxState = Rx<GetVideoListState>(
    const GetVideoListState.initial(),
  );
  GetVideoListState get state => _rxState.value;
  late List<HeHeVideo> allVideos;
  final Dio _dio = Dio();
  Future<void> loadVideos() async {
    _rxState.value = const GetVideoListState.loading();
    try {
      final String response = await _loadFromUrl();
      await _saveToLocal(response); // 将成功的网络数据保存到本地
      final videos = _parseVideos(response);
      _setSuccessState(videos);
    } catch (e) {
      debugPrint('loadVideos error: $e');
      try {
        final String response = await _loadFromLocal();
        final videos = _parseVideos(response);
        _setSuccessState(videos);
      } catch (loadError) {
        _rxState.value = GetVideoListState.failure(
          error: loadError.toString(),
        );
      }
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

  List<HeHeVideo> _parseVideos(String response) {
    final List<dynamic> jsonData = json.decode(response);
    return jsonData.map((data) => HeHeVideo.fromJson(data)).toList();
  }

  Future<File> _getLocalFile() async {
    final directory = await getApplicationDocumentsDirectory();
    return File('${directory.path}/mv_list.json');
  }

  Future<String> _loadFromLocal() async {
    final file = await _getLocalFile();
    if (await file.exists()) {
      return await file.readAsString();
    } else {
      throw Exception('Local data file not found.');
    }
  }

  Future<void> _saveToLocal(String data) async {
    final file = await _getLocalFile();
    await file.writeAsString(data);
  }

  void _setSuccessState(List<HeHeVideo> videos) {
    allVideos = videos;
    _rxState.value = GetVideoListState.success(videos: videos);
  }

  Future<String> _loadFromUrl() async {
    const String url =
        'https://raw.githubusercontent.com/paul5130/cosmoplay/main/mv_list.json';
    final response = await _dio.get(url);
    if (response.statusCode == 200) {
      return response.data.toString();
    } else {
      throw Exception(
          'Failed to load from URL: ${response.statusCode} - ${response.statusMessage}');
    }
  }
}
