import 'package:assesment/features/news/domain/entities/news.dart';
import 'package:flutter/foundation.dart';

class NewsModel extends News {
  NewsModel({
    @required String image,
    @required String title,
    @required String description,
    @required String source,
    @required String sourceLogo,
  }) : super(
          image: image,
          title: title,
          description: description,
          source: source,
          sourceLogo: sourceLogo,
        );
}
