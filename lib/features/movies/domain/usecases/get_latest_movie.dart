import 'package:assesment/core/errors/failures.dart';
import 'package:assesment/core/usecases/usecase.dart';
import 'package:assesment/features/movies/domain/entities/movie.dart';
import 'package:assesment/features/movies/domain/repository/movie_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetLatestMovies extends Usecase<List<Movie>, NoParams> {
  final MovieRepositoryProtocol repository;

  GetLatestMovies({
    @required this.repository,
  });

  @override
  Future<Either<Failure, List<Movie>>> call(NoParams params) {
    return repository.fetchMovies();
  }
}
