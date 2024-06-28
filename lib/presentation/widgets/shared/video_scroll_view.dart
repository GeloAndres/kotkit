import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/shared/video_buttons.dart';

class VideoScrollView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videosPost = videos[index];

        return Stack(
          children: [
            //video + gradiente

            //button
            Positioned(
                bottom: 60, right: 20, child: VideoButton(video: videosPost)),
          ],
        );
      },
    );
  }
}
