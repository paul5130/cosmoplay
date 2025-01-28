import 'package:cosmoplay/network/model/hehe_video.dart';
import 'package:flutter/material.dart';

import 'video_cell.dart';

class VideoList extends StatelessWidget {
  const VideoList({
    required this.videoList,
    required this.onVideoDetailScene,
    super.key,
  });
  final List<HeHeVideo> videoList;
  final void Function(HeHeVideo) onVideoDetailScene;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoList.length,
      itemBuilder: (context, index) => VideoCell(
        heheVideo: videoList[index],
        onPressed: onVideoDetailScene,
      ),
    );
  }
}
