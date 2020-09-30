import 'package:assesment/core/errors/failures.dart';
import 'package:assesment/features/news/domain/entities/article_list.dart';
import 'package:dartz/dartz.dart';

abstract class NewsRepositoryProtocol {
  Future<Either<Failure, ArticlesList>> fetchNews();
}
