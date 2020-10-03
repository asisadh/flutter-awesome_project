import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class Restaurant extends Equatable {
  final String address;
  final String name;

  Restaurant({
    @required this.address,
    @required this.name,
  });

  @override
  List<Object> get props => [
        address,
        name,
      ];
}
