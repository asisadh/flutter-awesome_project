import 'package:assesment/features/restaurants/domain/entities/restaurant.dart';
import 'package:flutter/foundation.dart';

List<RestaurantModel> resturantModelFromJson(Iterable iterable) =>
    List<RestaurantModel>.from((iterable)
        .map((x) => RestaurantModel.fromJson(x as Map<String, dynamic>)));

class RestaurantModel extends Restaurant {
  RestaurantModel({
    @required String name,
    @required String address,
  }) : super(
          name: name,
          address: address,
        );

  factory RestaurantModel.fromJson(Map<String, dynamic> json) =>
      RestaurantModel(
        address: json["address"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "image": address ?? "",
        "name": name ?? "",
      };
}
