import 'dart:io';

import 'package:cosmoplay/managers/video_manager.dart';
import 'package:cosmoplay/network/model/hehe_video.dart';
import 'package:cosmoplay/pages/video_detail_scene.dart/services/video_player_service.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart' hide Trans;

class HeHeVideoPlayerController extends GetxController
    with WidgetsBindingObserver {
  final VideoPlayerService videoPlayerService = Get.find<VideoPlayerService>();
  final VideoManager videoManager = Get.find<VideoManager>();

  final RxList<HeHeVideo> _rxVideoList = RxList<HeHeVideo>([]);
  List<HeHeVideo> get videoList => _rxVideoList;

  final RxString _rxTitle = RxString('');
  String get title => _rxTitle.value;

  final RxBool _rxIsFullScreen = RxBool(false);
  bool get isFullScreen => _rxIsFullScreen.value;

  int _currentIndex = 0;

  void _enterFullScreen() {
    _rxIsFullScreen.value = true;
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  void _exitFullScreen() {
    _rxIsFullScreen.value = false;
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  void setVideoList(List<HeHeVideo> videos) {
    _rxVideoList.assignAll(videos);
    _currentIndex = 0;
  }

  Future<void> playVideoAtIndex(int index) async {
    if (videoList.isEmpty || index >= videoList.length) return;
    _currentIndex = index;
    final video = videoList[index];
    await setupVideo(video);
  }

  Future<void> setupVideo(
    HeHeVideo heheVideo,
  ) async {
    videoPlayerService.resetController();
    _rxTitle.value = heheVideo.name;
    videoPlayerService.initialize(heheVideo.imageUrl);
    File? localVideo = await videoManager.getLocalVideo(heheVideo.id);
    if (localVideo != null) {
      debugPrint('Local video found! Playing: ${localVideo.path}');
      await videoPlayerService.initializeLocal(localVideo);
    } else {
      debugPrint('Cannot find local video, start playing video from remote...');
      await videoPlayerService.initializeNetwork(Uri.parse(heheVideo.videoUrl));
      videoManager.startDownload(heheVideo.videoUrl, heheVideo.id);
    }
    play();
  }

  void play() => videoPlayerService.play();

  void resume() => videoPlayerService.play();

  void pause() => videoPlayerService.pause();

  void seekTo(
    Duration position,
  ) =>
      videoPlayerService.seekTo(
        position,
      );

  void playNext() {
    if (videoList.isEmpty) return;
    _currentIndex = (_currentIndex + 1) % videoList.length;
    playVideoAtIndex(_currentIndex);
  }

  void playPrevious() {
    if (videoList.isEmpty) return;
    _currentIndex = (_currentIndex - 1) % videoList.length;
    if (_currentIndex < 0) _currentIndex = videoList.length - 1;
    playVideoAtIndex(_currentIndex);
  }

  @override
  void onInit() {
    super.onInit();
    WidgetsBinding.instance.addObserver(this);
    ever(videoPlayerService.isCompleted, (bool completed) {
      if (completed) {
        playNext();
      }
    });
  }

  @override
  void dispose() {
    videoPlayerService.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    final Size size = PlatformDispatcher.instance.views.first.physicalSize;
    final bool isLandscape = size.width > size.height;
    debugPrint('trigger change metrics');
    if (isLandscape && !isFullScreen) {
      debugPrint('enterFullScreen in did change metrics');
      _enterFullScreen();
    } else if (!isLandscape && isFullScreen) {
      debugPrint('exitFullScreen in did change metrics');
      _exitFullScreen();
    }
  }
}
