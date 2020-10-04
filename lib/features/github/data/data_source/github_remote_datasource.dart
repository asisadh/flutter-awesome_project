import 'package:assesment/core/git_hub_repo/git_hub_repo.dart';
import 'package:assesment/features/github/data/models/github_model.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class GitHubRemoteDataSourceProtocol {
  /// Calls the some_urlt&apiKey=[API_KEY] endpoint
  ///
  /// Throws [ServerException] for all error codes.
  Future<List<GithubModel>> getResturantList();
}

@LazySingleton(as: GitHubRemoteDataSourceProtocol)
class GitHubRemoteDataSource implements GitHubRemoteDataSourceProtocol {
  final GitHubRepoProtocol gitHubRepo;

  GitHubRemoteDataSource({
    @required this.gitHubRepo,
  });

  @override
  Future<List<GithubModel>> getResturantList() async {
    try {
      final list = await gitHubRepo.getResturantList();
      return githubModelFromJson(list);
    } catch (ex) {
      rethrow;
    }
  }
}
