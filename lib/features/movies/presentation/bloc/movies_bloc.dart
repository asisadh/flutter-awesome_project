import 'dart:async';

import 'package:assesment/core/usecases/usecase.dart';
import 'package:assesment/features/movies/domain/entities/movie.dart';
import 'package:assesment/features/movies/domain/usecases/get_latest_movie.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'movies_event.dart';
part 'movies_state.dart';
part 'movies_bloc.freezed.dart';

@injectable
class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetLatestMovies getLatestMovies;

  MoviesBloc({
    @required this.getLatestMovies,
  }) : super(MoviesState.loading());

  @override
  Stream<MoviesState> mapEventToState(
    MoviesEvent event,
  ) async* {
    yield* event.map(fetchMovies: (e) async* {
      yield MoviesState.loading();
      final result = await getLatestMovies(NoParams());
      yield result.fold(
        (failure) => MoviesState.failed(failure.toString()),
        (movies) => MoviesState.success(movies),
      );
    });
  }
}
