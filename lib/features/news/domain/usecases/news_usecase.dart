import 'package:assesment/core/errors/failures.dart';
import 'package:assesment/core/usecases/usecase.dart';
import 'package:assesment/features/news/domain/entities/article.dart';
import 'package:assesment/features/news/domain/repository/news_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class NewsUsecase extends Usecase<List<Article>, NoParams> {
  final NewsRepositoryProtocol repository;

  NewsUsecase({
    @required this.repository,
  });

  @override
  Future<Either<Failure, List<Article>>> call(NoParams params) {
    return repository.fetchNews();
  }
}
