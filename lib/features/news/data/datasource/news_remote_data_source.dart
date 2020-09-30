import 'package:assesment/features/news/data/models/article_model.dart';
import 'package:assesment/features/news/data/models/news_list_model.dart';

abstract class NewsRemoteDataSourceProtocol {
  /// Calls the http://newsapi.org/v2/everything?q=bitcoin&from=2020-08-30&sortBy=publishedAt&apiKey=[API_KEY] endpoint
  ///
  /// Throws [ServerException] for all error codes.
  Future<ArticlesListModel> getNewsList();
}
