import 'dart:convert';

import 'package:assesment/features/movies/domain/entities/movie.dart';
import 'package:flutter/foundation.dart';

List<MovieModel> movieModelFromJson(String str) =>
    List<MovieModel>.from((json.decode(str) as Iterable<dynamic>)
        .map((x) => MovieModel.fromJson(x as Map<String, dynamic>)));

class MovieModel extends Movie {
  MovieModel({
    @required String image,
    @required String name,
    @required String rating,
    @required String youtubeUrl,
  }) : super(
          image: image,
          name: name,
          rating: rating,
          youtubeUrl: youtubeUrl,
        );

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        image: json["image"],
        name: json["name"],
        rating: json["rating"],
        youtubeUrl: json["trailer"],
      );

  Map<String, dynamic> toJson() => {
        "image": image ?? "",
        "name": name ?? "",
        "rating": rating ?? "",
        "trailer": youtubeUrl ?? "",
      };
}
