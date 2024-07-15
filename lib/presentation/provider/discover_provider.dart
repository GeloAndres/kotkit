import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repository/video_post_respository.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostRespository videoPostRespository;

  DiscoverProvider({required this.videoPostRespository});

  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));
    final newVideo = await videoPostRespository.getFTrendingVideosByPage(1);
    videos.addAll(newVideo);
    initialLoading = false;
    notifyListeners();
  }
}
