import 'dart:convert';

import 'package:cosmoplay/network/model/hehe_video.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart' hide Trans;

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
      // await _saveToLocal(response);
      final videoList = _parseVideos(response);
      _setSuccessState(videoList);
    } catch (e) {
      debugPrint('loadVideos error: $e');
      try {
        final String response = await _getLocalFile();
        final videoList = _parseVideos(response);
        _setSuccessState(videoList);
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

  Future<String> _getLocalFile() async {
    final String response =
        await rootBundle.loadString('assets/data/mv_list.json');
    return response;
  }

  // Future<String> _loadFromLocal() async {
  //   return await _getLocalFile();
  // final file = await _getLocalFile();
  // if (await file.exists()) {
  //   return await file.readAsString();
  // } else {
  //   throw Exception('Local data file not found.');
  // }
  // }

  // Future<void> _saveToLocal(String data) async {
  //   final file = await _getLocalFile();
  //   await file.writeAsString(data);
  // }

  void _setSuccessState(List<HeHeVideo> videoList) {
    allVideos = videoList;
    _rxState.value = GetVideoListState.success(videoList: videoList);
  }

  Future<String> _loadFromUrl() async {
    const String url =
        'https://drive.usercontent.google.com/download?id=1FgBLIo8QmyVFPz3lmf_b8a-vr2-aTiEc';
    final response = await _dio.get(url);
    if (response.statusCode == 200) {
      return response.data.toString();
    } else {
      throw Exception(
          'Failed to load from URL: ${response.statusCode} - ${response.statusMessage}');
    }
  }
}
