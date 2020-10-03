import 'package:auto_route/auto_route.dart';
import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final String image;
  final String name;
  final String rating;
  final String youtubeUrl;

  Movie({
    @required this.image,
    @required this.name,
    @required this.rating,
    @required this.youtubeUrl,
  });

  @override
  List<Object> get props => [
        image,
        name,
        rating,
        youtubeUrl,
      ];
}
