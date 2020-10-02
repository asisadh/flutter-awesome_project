import 'dart:convert';

import 'package:assesment/core/errors/exceptions.dart';
import 'package:assesment/features/news/data/models/article_model.dart';
import 'package:assesment/features/news/data/models/news_list_model.dart';
import 'package:assesment/utils/app_constants.dart';
import 'package:auto_route/auto_route.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class NewsLocalDataSourceProtocol {
  /// Gets the cached [List<NewsModel>] which was gotton the last time
  /// the user had an internet connection
  ///
  /// Throws [CacheException] if no cached data is present.
  Future<ArticlesListModel> getCachedNews();

  Future<void> cacheNews(ArticlesListModel newsList);
}

class NewsLocalDataSource implements NewsLocalDataSourceProtocol {
  final SharedPreferences sharedPreference;

  NewsLocalDataSource({
    @required this.sharedPreference,
  });

  @override
  Future<void> cacheNews(ArticlesListModel newsList) {
    return sharedPreference.setString(
        NewsConstant.CACHED_NEWS, json.encode(newsList.toJson()));
  }

  @override
  Future<ArticlesListModel> getCachedNews() {
    final jsonString = sharedPreference.getString(NewsConstant.CACHED_NEWS);
    if (jsonString == null) {
      throw CacheException();
    }
    return Future.value(ArticlesListModel.fromCache(json.decode(jsonString)));
  }
}
