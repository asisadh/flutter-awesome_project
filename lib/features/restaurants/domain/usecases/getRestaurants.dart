import 'package:assesment/core/errors/failures.dart';
import 'package:assesment/core/usecases/usecase.dart';
import 'package:assesment/features/restaurants/domain/entities/restaurant.dart';
import 'package:assesment/features/restaurants/domain/repositories/restaurant_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetResturants extends Usecase<List<Restaurant>, NoParams> {
  final RestaurantRepositoryProtocol repository;

  GetResturants({
    @required this.repository,
  });

  @override
  Future<Either<Failure, List<Restaurant>>> call(NoParams params) {
    return repository.fetchResturants();
  }
}
