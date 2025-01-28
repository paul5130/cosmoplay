import 'package:background_downloader/background_downloader.dart';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class VideoDownloadService extends GetxService {
  final FileDownloader _downloader = FileDownloader();

  void downloadFile({
    required String url,
    required String filename,
    required BaseDirectory directory,
    Function(double progress)? onProgress,
  }) {
    final task = DownloadTask(
      url: url,
      filename: filename,
      baseDirectory: directory,
    );
    try {
      _downloader.download(
        task,
        onProgress: onProgress,
      );
    } catch (e) {
      debugPrint('Download Error: $e');
    }
  }

  Future<void> cancelDownload(String taskId) async {
    try {
      await _downloader.cancelTaskWithId(taskId);
    } catch (e) {
      debugPrint('Cancel Error: $e');
    }
  }
}
