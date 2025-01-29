import 'dart:io';

import 'package:background_downloader/background_downloader.dart';
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

  Future<void> setupVideo(
      String thumbnailUrl, String videoId, String videoUrl) async {
    videoPlayerService.initialize(thumbnailUrl);
    final directory = (Platform.isAndroid)
        ? await getExternalStorageDirectory()
        : await getApplicationDocumentsDirectory();
    if (directory != null) {
      final filePath = '${directory.path}/$videoId.mp4';

      if (File(filePath).existsSync()) {
        debugPrint('File exists: $filePath');
        await videoPlayerService.initializeLocal(File(filePath));
        play();
      } else {
        debugPrint('File does not exist: $filePath');
        _videoDownloadService.downloadFile(
          url: videoUrl,
          filename: '$videoId.mp4',
          directory: BaseDirectory.applicationDocuments,
          onProgress: (progress) =>
              debugPrint('Download progress: ${progress * 100}%'),
        );
        await videoPlayerService.initializeNetwork(Uri.parse(videoUrl));
        play();
      }
    } else {
      throw Exception('Failed to get local path');
    }
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
