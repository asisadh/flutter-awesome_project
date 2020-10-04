part of 'github_bloc.dart';

@freezed
abstract class GithubEvent with _$GithubEvent {
  const factory GithubEvent.fetchRepo() = _FetchRepo;
}
