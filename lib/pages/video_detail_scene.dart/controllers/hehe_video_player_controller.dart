import 'dart:io';

import 'package:background_downloader/background_downloader.dart';
import 'package:cosmoplay/pages/video_detail_scene.dart/services/video_download_service.dart';
import 'package:cosmoplay/pages/video_detail_scene.dart/services/video_player_service.dart';
import 'package:flutter/foundation.dart';

import 'package:get/get.dart' hide Trans;
import 'package:path_provider/path_provider.dart';

class HeHeVideoPlayerController extends GetxController {
  final VideoPlayerService videoService = VideoPlayerService();
  final VideoDownloadService _videoDownloadService = VideoDownloadService();
  RxBool isPlaying = false.obs;

  Future<void> setupVideo(String videoId, String videoUrl) async {
    final directory = (Platform.isAndroid)
        ? await getExternalStorageDirectory()
        : await getApplicationDocumentsDirectory();
    if (directory != null) {
      final filePath = '${directory.path}/$videoId.mp4';
      // final filename = '$videoId.mp4';
      if (File(filePath).existsSync()) {
        debugPrint('File exists: $filePath');
        await videoService.initializeLocal(File(filePath));
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
        await videoService.initializeNetwork(Uri.parse(videoUrl));
        play();
      }
    } else {
      throw Exception('Failed to get local path');
    }
  }

  void play() {
    videoService.play();
    isPlaying.value = true;
  }

  void resume() {
    videoService.play();
    isPlaying.value = true;
  }

  void pause() {
    videoService.pause();
    isPlaying.value = false;
  }

  Future<void> cancelDownload(String videoUrl) async {
    _videoDownloadService.cancelDownload(videoUrl);
  }

  @override
  void dispose() {
    videoService.dispose();
    super.dispose();
  }

  void seekTo(Duration position) {
    videoService.seekTo(position);
  }

  // Future<(Directory, String)> _getLocalFilePath(String videoId) async {
  //   final directory = (Platform.isAndroid)
  //       ? await getExternalStorageDirectory()
  //       : await getApplicationDocumentsDirectory();
  //   if (directory != null) {
  //     return (directory, '${directory.path}/$videoId.mp4');
  //   } else {
  //     throw Exception('Failed to get local path');
  //   }
  // }
}
