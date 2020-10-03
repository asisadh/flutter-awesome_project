import 'dart:convert';

import 'package:assesment/core/errors/exceptions.dart';
import 'package:assesment/features/news/data/models/news_list_model.dart';
import 'package:assesment/utils/app_constants.dart';
import 'package:auto_route/auto_route.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

abstract class NewsRemoteDataSourceProtocol {
  /// Calls the http://newsapi.org/v2/everything?q=bitcoin&from=2020-08-30&sortBy=publishedAt&apiKey=[API_KEY] endpoint
  ///
  /// Throws [ServerException] for all error codes.
  Future<ArticlesListModel> getNewsList();
}

@LazySingleton(as: NewsRemoteDataSourceProtocol)
class NewsRemoteDataSource implements NewsRemoteDataSourceProtocol {
  final http.Client client;

  NewsRemoteDataSource({
    @required this.client,
  });

  @override
  Future<ArticlesListModel> getNewsList() async {
    try {
      final response = await client.get(NewsConstant.BASE_URL);
      final statusCode = response.statusCode;
      if (statusCode == 200) {
        return ArticlesListModel.fromJson(json.decode(response.body));
      } else {
        throw ServerException();
      }
    } catch (ex) {
      rethrow;
    }
  }
}
