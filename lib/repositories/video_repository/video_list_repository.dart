import 'package:cosmoplay/network/model/hehe_video.dart';

abstract class VideoListRepository {
  Future<List<HeHeVideo>> fetchVideos();
}
