import 'dart:convert';

import 'package:assesment/core/errors/exceptions.dart';
import 'package:assesment/utils/app_constants.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

abstract class ResturantsFromPlacesProtocol {
  Future<Iterable> getResturantList();
}

@LazySingleton(as: ResturantsFromPlacesProtocol)
class ResturantsFromPlaces implements ResturantsFromPlacesProtocol {
  final http.Client client;

  ResturantsFromPlaces({
    @required this.client,
  });

  @override
  Future<Iterable<dynamic>> getResturantList() async {
    final response = await client.get(PlaceConstant.BASE_URL);

    final statusCode = response.statusCode;
    if (statusCode == 200) {
      final some = json.decode(response.body) as Map<String, dynamic>;
      final formattedData = [];
      final iteratable = some["features"] as Iterable;
      for (Map<String, dynamic> data in iteratable) {
        final name = data["properties"]["name"];
        final address = data["properties"]["formatted"];
        final distance = data["properties"]["distance"];

        final map = Map<String, dynamic>();
        map["name"] = name;
        map["address"] = address;
        map["distance"] = distance;

        formattedData.add(map);
      }
      return formattedData;
    } else {
      throw ServerException();
    }
  }
}
