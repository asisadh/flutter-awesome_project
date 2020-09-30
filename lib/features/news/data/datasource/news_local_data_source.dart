import 'package:assesment/features/news/data/models/article_model.dart';

abstract class NewsLocalDataSourceProtocol {
  /// Gets the cached [List<NewsModel>] which was gotton the last time
  /// the user had an internet connection
  ///
  /// Throws [CacheException] if no cached data is present.
  Future<List<ArticleModel>> getCachedNews();

  Future<void> cacheNews(List<ArticleModel> newsList);
}
