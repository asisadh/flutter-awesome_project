import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class Article extends Equatable {
  final String image;
  final String title;
  final String description;
  final String source;
  final String sourceLogo;
  final String url;

  Article({
    @required this.image,
    @required this.title,
    @required this.description,
    @required this.source,
    @required this.sourceLogo,
    @required this.url,
  });

  @override
  List<Object> get props => [
        image,
        title,
        description,
        source,
        sourceLogo,
        url,
      ];
}
