import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostDatasource {
  Future<List<VideoPost>> getFavoriteVideosByUser(String id);

  Future<List<VideoPost>> getFTrendingVideosByPage(int page);
}
