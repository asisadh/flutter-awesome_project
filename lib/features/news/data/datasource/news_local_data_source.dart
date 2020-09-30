import 'package:assesment/features/news/data/models/article_model.dart';
import 'package:assesment/features/news/data/models/news_list_model.dart';

abstract class NewsLocalDataSourceProtocol {
  /// Gets the cached [List<NewsModel>] which was gotton the last time
  /// the user had an internet connection
  ///
  /// Throws [CacheException] if no cached data is present.
  Future<ArticlesListModel> getCachedNews();

  Future<void> cacheNews(ArticlesListModel newsList);
}
