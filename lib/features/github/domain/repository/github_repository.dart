import 'package:assesment/core/errors/failures.dart';
import 'package:assesment/features/github/domain/entities/git_hub.dart';
import 'package:dartz/dartz.dart';

abstract class GithubRepositoryProtocol {
  Future<Either<Failure, List<Github>>> fetchRepos();
}
