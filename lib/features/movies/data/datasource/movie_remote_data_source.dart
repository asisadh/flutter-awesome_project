import 'dart:io';

import 'package:assesment/features/movies/data/datasource/dummy_api/movies.dart';
import 'package:assesment/features/movies/data/model/movie_model.dart';
import 'package:assesment/features/movies/domain/entities/movie.dart';
import 'package:injectable/injectable.dart';

abstract class MovieRemoteDataSourceProtocol {
  /// Calls the some_urlt&apiKey=[API_KEY] endpoint
  ///
  /// Throws [ServerException] for all error codes.
  Future<List<Movie>> getMovieList();
}

@LazySingleton(as: MovieRemoteDataSourceProtocol)
class MovieRemoteDataSource implements MovieRemoteDataSourceProtocol {
  @override
  Future<List<Movie>> getMovieList() async {
    return movieModelFromJson(movieJsonString);
  }
}
