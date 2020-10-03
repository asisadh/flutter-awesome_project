import 'package:assesment/core/errors/exceptions.dart';
import 'package:assesment/core/places/restaurants_via_third_party_api.dart';
import 'package:assesment/features/restaurants/data/models/resturant_model.dart';
import 'package:assesment/features/restaurants/domain/entities/restaurant.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class ResturantRemoteDataSourceProtocol {
  /// Calls the some_urlt&apiKey=[API_KEY] endpoint
  ///
  /// Throws [ServerException] for all error codes.
  Future<List<Restaurant>> getResturantList();
}

@LazySingleton(as: ResturantRemoteDataSourceProtocol)
class ResturantRemoteDataSource implements ResturantRemoteDataSourceProtocol {
  final ResturantsFromPlacesProtocol resturantsFromPlaces;

  ResturantRemoteDataSource({
    @required this.resturantsFromPlaces,
  });
  @override
  Future<List<Restaurant>> getResturantList() async {
    try {
      final list = await resturantsFromPlaces.getResturantList();
      return resturantModelFromJson(list);
    } catch (ex) {
      rethrow;
    }
    //
  }
}
