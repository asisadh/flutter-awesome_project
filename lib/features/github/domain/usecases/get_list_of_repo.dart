import 'package:assesment/core/errors/failures.dart';
import 'package:assesment/core/usecases/usecase.dart';
import 'package:assesment/features/github/domain/entities/git_hub.dart';
import 'package:assesment/features/github/domain/repository/github_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetListOfRepo extends Usecase<List<Github>, NoParams> {
  final GithubRepositoryProtocol repository;

  GetListOfRepo({
    @required this.repository,
  });

  @override
  Future<Either<Failure, List<Github>>> call(NoParams params) {
    return repository.fetchRepos();
  }
}
