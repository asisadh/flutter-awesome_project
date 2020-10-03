part of 'movies_bloc.dart';

@freezed
abstract class MoviesState with _$MoviesState {
  const factory MoviesState.loading() = _Loading;
  const factory MoviesState.success(List<Movie> list) = _Success;
  const factory MoviesState.failed(String message) = _Failed;
}
