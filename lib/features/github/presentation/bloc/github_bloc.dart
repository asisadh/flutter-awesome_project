import 'dart:async';

import 'package:assesment/core/usecases/usecase.dart';
import 'package:assesment/features/github/domain/entities/git_hub.dart';
import 'package:assesment/features/github/domain/usecases/get_list_of_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'github_event.dart';
part 'github_state.dart';
part 'github_bloc.freezed.dart';

@injectable
class GithubBloc extends Bloc<GithubEvent, GithubState> {
  final GetListOfRepo getListOfRepo;

  GithubBloc({
    @required this.getListOfRepo,
  }) : super(GithubState.loading());

  @override
  Stream<GithubState> mapEventToState(
    GithubEvent event,
  ) async* {
    yield* event.map(fetchRepo: (e) async* {
      yield GithubState.loading();
      final result = await getListOfRepo(NoParams());
      yield result.fold(
        (failure) => GithubState.failed(failure.toString()),
        (repo) => GithubState.success(repo),
      );
    });
  }
}
