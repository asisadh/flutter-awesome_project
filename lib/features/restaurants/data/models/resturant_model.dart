import 'package:assesment/features/restaurants/domain/entities/restaurant.dart';
import 'package:flutter/foundation.dart';

List<RestaurantModel> resturantModelFromJson(Iterable iterable) =>
    List<RestaurantModel>.from((iterable)
        .map((x) => RestaurantModel.fromJson(x as Map<String, dynamic>)));

class RestaurantModel extends Restaurant {
  RestaurantModel({
    @required String name,
    @required String address,
    @required double lat,
    @required double lon,
  }) : super(
          name: name,
          address: address,
          lat: lat,
          lon: lon,
        );

  factory RestaurantModel.fromJson(Map<String, dynamic> json) =>
      RestaurantModel(
        address: json["address"],
        name: json["name"],
        lat: json["lat"],
        lon: json["lon"],
      );

  Map<String, dynamic> toJson() => {
        "image": address ?? "",
        "name": name ?? "",
        "lat": lat ?? "",
        "lon": lon ?? "",
      };
}
