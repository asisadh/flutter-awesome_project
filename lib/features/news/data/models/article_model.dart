import 'package:assesment/features/news/domain/entities/article.dart';
import 'package:flutter/foundation.dart';

class ArticleModel extends Article {
  ArticleModel({
    @required String image,
    @required String title,
    @required String description,
    @required String source,
    @required String sourceLogo,
    @required String url,
  }) : super(
          image: image,
          title: title,
          description: description,
          source: source,
          sourceLogo: sourceLogo,
          url: url,
        );

  factory ArticleModel.fromJson(Map<String, dynamic> json) => ArticleModel(
        image: json["urlToImage"],
        title: json["title"],
        description: json["description"],
        source: json["source"]["name"],
        sourceLogo: json["source"]["id"],
        url: json["url"],
      );

  factory ArticleModel.fromCache(Map<String, dynamic> json) => ArticleModel(
        image: json["image"],
        title: json["title"],
        description: json["description"],
        source: json["source"],
        sourceLogo: json["source_logo"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "image": image ?? "",
        "title": title ?? "",
        "description": description ?? "",
        "source": source ?? "",
        "source_logo": "",
        "url": url ?? "",
      };
}
