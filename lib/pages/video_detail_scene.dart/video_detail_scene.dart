import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;

import '../../network/model/hehe_video.dart';
import 'widgets/hehe_video_player/hehe_video_player.dart';

class VideoDetailScene extends StatelessWidget {
  VideoDetailScene({super.key});
  final _heheVideo = Get.arguments as HeHeVideo;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Video Player'),
        ),
        body: HeheVideoPlayer(
          videoId: _heheVideo.id,
          videoUrl: _heheVideo.videoUrl,
          thumbnailUrl: _heheVideo.imageUrl,
        ),
      );
}
