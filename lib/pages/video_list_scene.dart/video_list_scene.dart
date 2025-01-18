import 'dart:async';
import 'dart:convert';

import 'package:cosmoplay/network/model/hehe_video.dart';
import 'package:cosmoplay/pages/video_detail_scene.dart/video_detail_scene.dart';
import 'package:cosmoplay/pages/video_list_scene.dart/widgets/video_cell.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart' hide Trans;

class VideoListScene extends StatefulWidget {
  const VideoListScene({super.key});
  static const String _ROUTE_NAME = "VideoListScene";

  static String get ROUTE_NAME => "/$_ROUTE_NAME";

  static String get ARG_URL => "ARG_URL";
  @override
  State<VideoListScene> createState() => _VideoListSceneState();
}

class _VideoListSceneState extends State<VideoListScene> {
  List<HeHeVideo> heheVideos = [];
  @override
  void initState() {
    super.initState();
    loadVideos();
  }

  Future<void> loadVideos() async {
    final String response =
        await rootBundle.loadString('assets/data/mv_list.json');
    final List<dynamic> jsonData = json.decode(response);
    setState(() {
      heheVideos = jsonData.map((data) => HeHeVideo.fromJson(data)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: heheVideos.length,
        itemBuilder: (context, index) => VideoCell(
          heheVideo: heheVideos[index],
          onPressed: _toVideoDetailScene,
        ),
      ),
    );
  }

  void _toVideoDetailScene(HeHeVideo video) => unawaited(
        Get.toNamed(
          VideoDetailScene.ROUTE_NAME,
          arguments: VideoDetailScene.genArgs(
            heheVideo: video,
          ),
        ),
      );
}
