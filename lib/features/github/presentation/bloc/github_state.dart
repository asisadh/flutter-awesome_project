part of 'github_bloc.dart';

@freezed
abstract class GithubState with _$GithubState {
  const factory GithubState.loading() = _Loading;
  const factory GithubState.success(List<Github> list) = _Success;
  const factory GithubState.failed(String message) = _Failed;
}
