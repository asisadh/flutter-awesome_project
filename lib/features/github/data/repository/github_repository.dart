import 'package:assesment/core/errors/failures.dart';
import 'package:assesment/features/github/data/data_source/github_remote_datasource.dart';
import 'package:assesment/features/github/domain/entities/git_hub.dart';
import 'package:assesment/features/github/domain/repository/github_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GithubRepositoryProtocol)
class GithubRepository implements GithubRepositoryProtocol {
  final GitHubRemoteDataSourceProtocol remoteDataSource;

  GithubRepository({
    @required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, List<Github>>> fetchRepos() async {
    try {
      return Right(await remoteDataSource.getResturantList());
    } catch (ex) {
      return Left(ServerFailure());
    }
  }
}
