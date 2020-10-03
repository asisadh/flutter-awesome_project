import 'package:assesment/core/errors/failures.dart';
import 'package:assesment/features/restaurants/data/datasource/resturants_remote_data_source.dart';
import 'package:assesment/features/restaurants/domain/entities/restaurant.dart';
import 'package:assesment/features/restaurants/domain/repositories/restaurant_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: RestaurantRepositoryProtocol)
class RestaurantRepository implements RestaurantRepositoryProtocol {
  final ResturantRemoteDataSourceProtocol remoteDataSourceProtocol;

  RestaurantRepository({
    @required this.remoteDataSourceProtocol,
  });

  @override
  Future<Either<Failure, List<Restaurant>>> fetchResturants() async {
    try {
      return Right(await remoteDataSourceProtocol.getResturantList());
    } catch (ex) {
      return Left(ServerFailure());
    }
  }
}
