import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class Restaurant extends Equatable {
  final String address;
  final String name;
  final double lat;
  final double lon;

  Restaurant({
    @required this.address,
    @required this.name,
    @required this.lat,
    @required this.lon,
  });

  @override
  List<Object> get props => [
        address,
        name,
      ];
}
