import 'package:assesment/core/errors/failures.dart';
import 'package:assesment/features/movies/data/datasource/movie_remote_data_source.dart';
import 'package:assesment/features/movies/domain/entities/movie.dart';
import 'package:assesment/features/movies/domain/repository/movie_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MovieRepositoryProtocol)
class MovieRepository implements MovieRepositoryProtocol {
  final MovieRemoteDataSourceProtocol dataSource;

  MovieRepository({
    @required this.dataSource,
  });

  @override
  Future<Either<Failure, List<Movie>>> fetchMovies() async {
    try {
      final movies = await dataSource.getMovieList();
      return Right(movies);
    } catch (ex) {
      return Left(ServerFailure());
    }
  }
}
