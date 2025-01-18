import 'package:cosmoplay/network/model/hehe_video.dart';
import 'package:flutter/material.dart';

class VideoCell extends StatelessWidget {
  const VideoCell({
    super.key,
    required this.heheVideo,
    required this.onPressed,
  });
  final HeHeVideo heheVideo;
  final void Function(HeHeVideo) onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(
        heheVideo,
      ),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          width: double.infinity,
          height: 320,
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Image.network(
                        heheVideo.imageUrl,
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1, -1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                          0,
                          12,
                          12,
                          0,
                        ),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {},
                            child: Icon(
                              Icons.favorite,
                              color: Colors.blueAccent,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 4),
                          child: Text(heheVideo.name),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.blueAccent,
                      size: 24,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
