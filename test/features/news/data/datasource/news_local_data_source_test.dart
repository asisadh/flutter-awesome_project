import 'dart:convert';

import 'package:assesment/core/errors/exceptions.dart';
import 'package:assesment/features/news/data/datasource/news_local_data_source.dart';
import 'package:assesment/features/news/data/models/article_model.dart';
import 'package:assesment/features/news/data/models/news_list_model.dart';
import 'package:assesment/utils/app_constants.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../stub/stub_reader.dart';

class MockSharedPreference extends Mock implements SharedPreferences {}

void main() {
  NewsLocalDataSource dataSource;
  MockSharedPreference sharedPreference;

  setUp(() {
    sharedPreference = MockSharedPreference();
    dataSource = NewsLocalDataSource(sharedPreference: sharedPreference);
  });

  final article = ArticleModel(
    image:
        "https://cdn.cnn.com/cnnnext/dam/assets/200930035059-mac-davis-file-super-tease.jpg",
    title: "Mac Davis, Elvis songwriter and country star, dead at 78 - CNN",
    description:
        "Legendary country singer and songwriter Mac Davis has died at the age of  78 following heart surgery.",
    source: "CNN",
    sourceLogo: "cnn",
  );

  final testModel = ArticlesListModel(articles: [article]);

  test('should return News if found in local storage', () async {
    //arrange
    when(sharedPreference.getString(any))
        .thenReturn(stub(path: 'news', name: 'cached_data.json'));
    //act
    final result = await dataSource.getCachedNews();
    //assert
    verify(sharedPreference.getString(NewsConstant.CACHED_NEWS));
    expect(result, equals(testModel));
    //
  });

  test('should throw CacheExecption if not found.', () async {
    //arrange
    when(sharedPreference.getString(any)).thenReturn(null);
    //act
    final call = dataSource.getCachedNews;
    //assert
    expect(() => call(), throwsA(isA<CacheException>()));
    //
  });

  test('should cached News in local storage', () async {
    //act
    dataSource.cacheNews(testModel);
    //assert
    final value = json.encode(testModel.toJson());
    verify(sharedPreference.setString(NewsConstant.CACHED_NEWS, value));
  });
}
