import 'package:toktik/domain/datasource/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastucture/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_posts.dart';

class LocalVideoDatasourceImpl implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((videos) => LocalVideoModel.fromJson(videos).toVideoPostEntity())
        .toList();
    return newVideos;
  }

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String id) {
    throw UnimplementedError();
  }
}
