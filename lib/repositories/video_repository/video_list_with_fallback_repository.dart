import 'package:cosmoplay/network/model/hehe_video.dart';
import 'package:cosmoplay/repositories/video_repository/video_list_repository.dart';
import 'package:flutter/foundation.dart';

class VideoListWithFallbackRepository extends VideoListRepository {
  final VideoListRepository primaryRepository;
  final VideoListRepository fallbackRepository;

  VideoListWithFallbackRepository({
    required this.primaryRepository,
    required this.fallbackRepository,
  });
  @override
  Future<List<HeHeVideo>> fetchVideos() async {
    try {
      return await primaryRepository.fetchVideos();
    } catch (primaryError) {
      debugPrint('Primary repository failed: $primaryError');
      try {
        return await fallbackRepository.fetchVideos();
      } catch (fallbackError) {
        debugPrint('Fallback repository failed: $fallbackError');
        throw Exception('All Video resources failed: $fallbackError');
      }
    }
  }
}
