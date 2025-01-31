import 'dart:convert';
import 'package:cosmoplay/services/video_manager.dart';
import 'package:cosmoplay/network/model/hehe_video.dart';
import 'package:cosmoplay/repositories/video_repository/video_list_repository.dart';
import 'package:get/get.dart' hide Trans;

class RemoteVideoListRepository extends VideoListRepository {
  final VideoManager _videoManager = Get.find<VideoManager>();
  @override
  Future<List<HeHeVideo>> fetchVideos() async {
    try {
      final response = await _videoManager.getVideoListJsonFromRemote();
      if (response == null) {
        throw Exception('Failed to load remote video list.');
      }
      final List<dynamic> jsonData = json.decode(response);
      final List<HeHeVideo> videoList =
          jsonData.map((data) => HeHeVideo.fromJson(data)).toList();
      await _videoManager.saveVideoListToLocal(response);
      return videoList;
    } catch (e) {
      throw Exception("Failed to load remote video list: $e");
    }
  }
}
