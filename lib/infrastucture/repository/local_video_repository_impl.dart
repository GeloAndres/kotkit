import 'package:toktik/domain/datasource/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repository/video_post_respository.dart';

class LocalVideoRepositoryImpl implements VideoPostRespository {
  final VideoPostDatasource videoPostDatasource;

  LocalVideoRepositoryImpl({required this.videoPostDatasource});
  @override
  Future<List<VideoPost>> getFTrendingVideosByPage(int page) {
    return videoPostDatasource.getFTrendingVideosByPage(page);
  }

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String id) {
    throw UnimplementedError();
  }
}
