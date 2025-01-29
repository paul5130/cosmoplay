import 'dart:io';

import 'package:background_downloader/background_downloader.dart';
import 'package:cosmoplay/network/model/hehe_video.dart';
import 'package:cosmoplay/pages/video_detail_scene.dart/services/video_download_service.dart';
import 'package:cosmoplay/pages/video_detail_scene.dart/services/video_player_service.dart';
import 'package:flutter/foundation.dart';

import 'package:get/get.dart' hide Trans;
import 'package:path_provider/path_provider.dart';

class HeHeVideoPlayerController extends GetxController {
  final VideoPlayerService videoPlayerService = Get.find<VideoPlayerService>();
  final VideoDownloadService _videoDownloadService =
      Get.find<VideoDownloadService>();

  RxBool isPlaying = false.obs;

  void setVideoQueue(List<HeHeVideo> videos) {
    videoPlayerService.setVideoQueue(videos);
  }

  Future<void> playVideoAtIndex(int index) async {
    if (videoPlayerService.videoQueue.isEmpty) return;
    final video = videoPlayerService.videoQueue[index];
    await setupVideo(video);
  }

  Future<void> setupVideo(
    HeHeVideo heheVideo,
  ) async {
    videoPlayerService.initialize(heheVideo.imageUrl);
    Directory? directory = await _getdirectory();
    if (directory != null) {
      final isLocal = await _isVideoDownloaded(heheVideo.id, directory);
      if (isLocal) {
        final file = await _getLocalVideo(heheVideo.id, directory);
        await videoPlayerService.initializeLocal(file);
      } else {
        _startDownload(heheVideo.videoUrl, heheVideo.id);
        await videoPlayerService.initializeNetwork(
          Uri.parse(
            heheVideo.videoUrl,
          ),
        );
      }
      play();
    } else {
      throw Exception('Failed to get local path');
    }
  }

  Future<bool> _isVideoDownloaded(
    String videoId,
    Directory directory,
  ) async {
    final filePath = '${directory.path}/$videoId.mp4';
    final file = File(filePath);
    return file.exists();
  }

  Future<File> _getLocalVideo(
    String videoId,
    Directory directory,
  ) async {
    final filePath = '${directory.path}/$videoId.mp4';
    return File(filePath);
  }

  Future<Directory?> _getdirectory() async {
    final directory = (Platform.isAndroid)
        ? await getExternalStorageDirectory()
        : await getApplicationDocumentsDirectory();
    return directory;
  }

  void _startDownload(String videoUrl, String videoId) {
    debugPrint('Starting download for $videoId.mp4');
    _videoDownloadService.downloadFile(
      url: videoUrl,
      filename: '$videoId.mp4',
      directory: BaseDirectory.applicationDocuments,
      onProgress: (progress) =>
          debugPrint('Download progress: ${progress * 100}%'),
    );
  }

  void play() {
    videoPlayerService.play();
    isPlaying.value = true;
  }

  void resume() {
    videoPlayerService.play();
    isPlaying.value = true;
  }

  void pause() {
    videoPlayerService.pause();
    isPlaying.value = false;
  }

  void seekTo(Duration position) {
    videoPlayerService.seekTo(position);
  }

  @override
  void dispose() {
    videoPlayerService.dispose();
    super.dispose();
  }
}
