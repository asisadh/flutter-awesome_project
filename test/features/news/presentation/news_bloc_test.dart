import 'package:assesment/core/errors/failures.dart';
import 'package:assesment/core/usecases/usecase.dart';
import 'package:assesment/features/news/data/models/article_model.dart';
import 'package:assesment/features/news/data/models/news_list_model.dart';
import 'package:assesment/features/news/domain/usecases/get_latest_news.dart';
import 'package:assesment/features/news/presentation/bloc/news_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockGetLatestNews extends Mock implements GetLatestNews {}

void main() {
  NewsBloc bloc;
  MockGetLatestNews mockGetLatestNews;

  setUp(() {
    mockGetLatestNews = MockGetLatestNews();
    bloc = NewsBloc(getLatestNews: mockGetLatestNews);
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

  test('initial state should be loading state', () {
    expect(bloc.state, equals(NewsState.loading()));
  });

  test('should get new data from the GetLatestNews use case.', () async {
    //assign
    when(mockGetLatestNews(any)).thenAnswer((_) async => Right(testModel));

    //act
    bloc.add(NewsEvent.fetchNews());
    await untilCalled(mockGetLatestNews(any));

    //assert
    verify(mockGetLatestNews(NoParams()));
  });

  test('should emit [Loding, Success] when data is gotten successfully.',
      () async {
    //assign
    when(mockGetLatestNews(any)).thenAnswer((_) async => Right(testModel));

    //assert Later
    final assertExpected = [
      NewsState.loading(),
      NewsState.success(testModel),
    ];
    expectLater(bloc.asBroadcastStream(), emitsInOrder(assertExpected));

    //act
    bloc.add(NewsEvent.fetchNews());
  });

  test('should emit [Loding, Failed] when data is gotten successfully.',
      () async {
    //assign
    when(mockGetLatestNews(any)).thenAnswer((_) async => Left(ServerFailure()));

    //assert Later
    final assertExpected = [
      NewsState.loading(),
      NewsState.failed(ServerFailure().toString()),
    ];
    expectLater(bloc.asBroadcastStream(), emitsInOrder(assertExpected));

    //act
    bloc.add(NewsEvent.fetchNews());
  });
}
