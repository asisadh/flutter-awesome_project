import 'package:assesment/core/errors/failures.dart';
import 'package:assesment/features/restaurants/domain/entities/restaurant.dart';
import 'package:dartz/dartz.dart';

abstract class RestaurantRepositoryProtocol {
  Future<Either<Failure, List<Restaurant>>> fetchResturants();
}
