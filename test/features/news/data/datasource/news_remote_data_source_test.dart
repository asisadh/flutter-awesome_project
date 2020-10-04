import 'package:assesment/core/errors/exceptions.dart';
import 'package:assesment/features/news/data/datasource/news_remote_data_source.dart';
import 'package:assesment/features/news/data/models/article_model.dart';
import 'package:assesment/features/news/data/models/news_list_model.dart';
import 'package:assesment/utils/app_constants.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;

import '../../../../stub/stub_reader.dart';

class MockHttpClient extends Mock implements http.Client {}

main() {
  NewsRemoteDataSource dataSource;
  MockHttpClient client;

  void setUpHTTPCLient200() {
    when(client.get(any)).thenAnswer((_) async => http.Response(
        stub(
          name: 'news_list.json',
          path: 'news',
        ),
        200));
  }

  void setUpHTTPCLient500() {
    when(client.get(any)).thenAnswer((_) async => http.Response('', 500));
  }

  setUp(() {
    client = MockHttpClient();
    dataSource = NewsRemoteDataSource(client: client);
  });

  final article = ArticleModel(
    image:
        "https://cdn.cnn.com/cnnnext/dam/assets/200930035059-mac-davis-file-super-tease.jpg",
    title: "Mac Davis, Elvis songwriter and country star, dead at 78 - CNN",
    description:
        "Legendary country singer and songwriter Mac Davis has died at the age of  78 following heart surgery.",
    source: "CNN",
    sourceLogo: "cnn",
    url: "url",
  );

  final testModel = ArticlesListModel(articles: [article]);

  test('''should perform a GET request on a URL with API KEY
    being the end point''', () async {
    //assign
    setUpHTTPCLient200();
    //act
    await dataSource.getNewsList();
    //assert
    verify(client.get(NewsConstant.BASE_URL));
  });

  test('''should return a ArticleListModel if the network status is 200.''',
      () async {
    //assign
    setUpHTTPCLient200();
    //act
    final result = await dataSource.getNewsList();
    //assert
    expect(result, equals(testModel));
  });

  test(
      '''should return a Network Exception if the network status is not 200.''',
      () async {
    //assign
    setUpHTTPCLient500();
    //act
    final call = dataSource.getNewsList;
    //assert
    expect(() => call(), throwsA(isA<ServerException>()));
  });
}
