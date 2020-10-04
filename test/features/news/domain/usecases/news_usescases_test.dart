import 'package:assesment/core/usecases/usecase.dart';
import 'package:assesment/features/news/domain/entities/article.dart';
import 'package:assesment/features/news/domain/entities/article_list.dart';
import 'package:assesment/features/news/domain/repository/news_repository.dart';
import 'package:assesment/features/news/domain/usecases/get_latest_news.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNewsRepository extends Mock implements NewsRepositoryProtocol {}

void main() {
  GetLatestNews newsUsecase;
  MockNewsRepository mockRepository;

  setUp(() {
    mockRepository = MockNewsRepository();
    newsUsecase = GetLatestNews(repository: mockRepository);
  });

  final news = Article(
    image: "image",
    title: "title",
    description: "description",
    source: "source",
    sourceLogo: "sourceLogo",
    url: "url",
  );
  final newsList = ArticlesList(articles: [news]);

  test('should get news from repository when news are available', () async {
    //arrange
    when(mockRepository.fetchNews()).thenAnswer((_) async => Right(newsList));

    //act
    final result = await newsUsecase(NoParams());

    //assert
    expect(result, Right(newsList));
    verify(mockRepository.fetchNews());
    verifyNoMoreInteractions(mockRepository);
  });
}
