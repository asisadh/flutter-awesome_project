import 'package:assesment/core/errors/exceptions.dart';
import 'package:assesment/core/errors/failures.dart';
import 'package:assesment/core/network/network_info.dart';
import 'package:assesment/features/news/data/datasource/news_local_data_source.dart';
import 'package:assesment/features/news/data/datasource/news_remote_data_source.dart';
import 'package:assesment/features/news/data/models/news_list_model.dart';
import 'package:assesment/features/news/domain/repository/news_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: NewsRepositoryProtocol)
class NewsRepository implements NewsRepositoryProtocol {
  final NewsRemoteDataSourceProtocol remoteDataSource;
  final NewsLocalDataSourceProtocol localDataSource;
  final NetworkInfoProtocol networkInfo;

  NewsRepository({
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });

  @override
  Future<Either<Failure, ArticlesListModel>> fetchNews() async {
    final isNewtorkAvailable = await networkInfo.isConnected;

    if (isNewtorkAvailable) {
      try {
        final newsList = await remoteDataSource.getNewsList();
        localDataSource.cacheNews(newsList);
        return Right(newsList);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final newsList = await localDataSource.getCachedNews();
        return Right(newsList);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
