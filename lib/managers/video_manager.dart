import 'dart:io';

import 'package:background_downloader/background_downloader.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart' hide Trans;
import 'package:path_provider/path_provider.dart';

import '../pages/video_detail_scene.dart/services/video_download_service.dart';

class VideoManager extends GetxService {
  static const String _filename = 'mv_list.json';
  static const String _videoListUrl =
      'https://drive.usercontent.google.com/download?id=1nzjKF2rVtfVmHU3Yqg43cylhP92NYVr1';
  final Dio _dio = Dio();

  Future<String?> getVideoListJsonFromRemote() async {
    try {
      final response = await _dio.get(_videoListUrl);
      if (response.statusCode == 200) {
        return response.data.toString();
      } else {
        throw Exception(
            'Failed to load from URL: ${response.statusCode} - ${response.statusMessage}');
      }
    } catch (e, stacktrace) {
      debugPrint('network request error: $e');
      debugPrintStack(stackTrace: stacktrace);
      return null;
    }
  }

  Future<String?> getVideoListJsonFromLocal() async {
    try {
      final directory = await _getDirectory();
      final File file = File('${directory.path}/$_filename');
      if (await file.exists()) {
        return await file.readAsString();
      } else {
        throw Exception('Can not find any video list from local');
      }
    } catch (e, stacktrace) {
      debugPrint('Failed to fetch video list from local.');
      debugPrintStack(stackTrace: stacktrace);
      return null;
    }
  }

  Future<File?> getLocalVideo(String videoId) async {
    final directory = await _getDirectory();
    final File file = File('${directory.path}/$videoId.mp4');
    return await file.exists() ? file : null;
  }

  void startDownload(String videoUrl, String videoId) {
    debugPrint('Starting download video : $videoId.mp4');
    final videoDownloadService = Get.find<VideoDownloadService>();
    videoDownloadService.downloadFile(
      url: videoUrl,
      filename: '$videoId.mp4',
      directory: BaseDirectory.applicationDocuments,
    );
  }

  Future<void> saveVideoListToLocal(String videoListJson) async {
    try {
      final directory = await _getDirectory();
      final File file = File('${directory.path}/$_filename');
      await file.writeAsString(videoListJson);
      debugPrint('Successfully save video list json to local');
    } catch (e, stacktrace) {
      debugPrint('Failed to save video list to local: $e');
      debugPrintStack(stackTrace: stacktrace);
    }
  }

  Future<Directory> _getDirectory() async {
    try {
      return (Platform.isAndroid)
          ? await getExternalStorageDirectory() ??
              await getApplicationDocumentsDirectory()
          : await getApplicationDocumentsDirectory();
    } catch (e, stacktrace) {
      debugPrint('Cannot get local directory: $e');
      debugPrintStack(stackTrace: stacktrace);
      throw Exception('Failed to get storage directory.');
    }
  }
}
