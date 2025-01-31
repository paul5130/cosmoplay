import 'dart:convert';

import 'package:cosmoplay/network/model/hehe_video.dart';
import 'package:cosmoplay/repositories/video_repository/video_list_repository.dart';
import 'package:get/get.dart' hide Trans;

import '../../services/video_manager.dart';

class LocalVideoListRepository extends VideoListRepository {
  final VideoManager _videoManager = Get.find<VideoManager>();
  @override
  Future<List<HeHeVideo>> fetchVideos() async {
    try {
      final response = await _videoManager.getVideoListJsonFromLocal();
      if (response == null) throw Exception('Failed to load local video list.');
      final List<dynamic> jsonData = json.decode(response);
      return jsonData.map((data) => HeHeVideo.fromJson(data)).toList();
    } catch (e) {
      throw Exception("Failed to load local video list: $e");
    }
  }
}
