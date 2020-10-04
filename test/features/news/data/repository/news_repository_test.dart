import 'package:assesment/core/errors/exceptions.dart';
import 'package:assesment/core/errors/failures.dart';
import 'package:assesment/core/network/network_info.dart';
import 'package:assesment/features/news/data/datasource/news_local_data_source.dart';
import 'package:assesment/features/news/data/datasource/news_remote_data_source.dart';
import 'package:assesment/features/news/data/models/article_model.dart';
import 'package:assesment/features/news/data/models/news_list_model.dart';
import 'package:assesment/features/news/data/repository/news_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNewsRemoteDataSource extends Mock
    implements NewsRemoteDataSourceProtocol {}

class MockNewsLocalDataSource extends Mock
    implements NewsLocalDataSourceProtocol {}

class MockNetworkInfo extends Mock implements NetworkInfoProtocol {}

void main() {
  NewsRepository repository;
  MockNewsRemoteDataSource remoteDataSource;
  MockNewsLocalDataSource localDataSource;
  MockNetworkInfo networkInfo;

  void runTestOnline(Function body) {
    group('Device is online', () {
      setUp(() {
        when(networkInfo.isConnected).thenAnswer((_) async => true);
      });

      body();
    });
  }

  void runTestOffline(Function body) {
    group('Device is Offline', () {
      setUp(() {
        when(networkInfo.isConnected).thenAnswer((_) async => false);
      });

      body();
    });
  }

  final news = ArticleModel(
    image: "image",
    title: "title",
    description: "description",
    source: "source",
    sourceLogo: "sourceLogo",
    url: "url",
  );
  final newsList = ArticlesListModel(articles: [news]);

  setUp(() {
    remoteDataSource = MockNewsRemoteDataSource();
    localDataSource = MockNewsLocalDataSource();
    networkInfo = MockNetworkInfo();

    repository = NewsRepository(
      remoteDataSource: remoteDataSource,
      localDataSource: localDataSource,
      networkInfo: networkInfo,
    );
  });

  test('Should test if device is online', () {
    //arrange
    when(networkInfo.isConnected).thenAnswer((_) async => true);
    //act
    repository.fetchNews();
    //assert
    verify(networkInfo.isConnected);
  });

  runTestOnline(() {
    test(
        'Should return remote data when the call to remote data source is successful ',
        () async {
      //arrange
      when(remoteDataSource.getNewsList()).thenAnswer((_) async => newsList);

      //act
      final result = await repository.fetchNews();

      //assert
      expect(result, equals(Right(newsList)));
    });

    test(
        'Should cache the data locally when the call to remote data source is successful',
        () async {
      //arrange
      when(remoteDataSource.getNewsList()).thenAnswer((_) async => newsList);
      //act
      await repository.fetchNews();
      //assert
      verify(remoteDataSource..getNewsList());
      verify(localDataSource.cacheNews(newsList));
    });

    test(
        'Should return Server Exception when the call to remote data source is unsuccessful',
        () async {
      //arrange
      when(remoteDataSource.getNewsList()).thenThrow(ServerException());
      //act
      final result = await repository.fetchNews();
      //assert
      expect(result, equals(Left(ServerFailure())));
      verifyZeroInteractions(localDataSource);
    });
  });

  runTestOffline(() {
    test(
        'Should return local data when the call to local data source is successful',
        () async {
      //arrange
      when(localDataSource.getCachedNews()).thenAnswer((_) async => newsList);
      //act
      final result = await repository.fetchNews();
      //assert
      expect(result, equals(Right(newsList)));
      verify(localDataSource.getCachedNews());
      verifyNever(remoteDataSource.getNewsList());
    });

    test(
        'Should return Cache Error when the call to local data source is unsuccessful',
        () async {
      //arrange
      when(localDataSource.getCachedNews()).thenThrow(CacheException());
      //act
      final result = await repository.fetchNews();
      //assert
      expect(result, equals(left(CacheFailure())));
      verify(localDataSource.getCachedNews());
      verifyNever(remoteDataSource.getNewsList());
    });
  });
}
