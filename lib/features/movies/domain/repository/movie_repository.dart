import 'package:assesment/core/errors/failures.dart';
import 'package:assesment/features/movies/domain/entities/movie.dart';
import 'package:dartz/dartz.dart';

abstract class MovieRepositoryProtocol {
  Future<Either<Failure, List<Movie>>> fetchMovies();
}
