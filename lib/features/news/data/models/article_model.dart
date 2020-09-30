import 'package:assesment/features/news/domain/entities/article.dart';
import 'package:flutter/foundation.dart';

class ArticleModel extends Article {
  ArticleModel({
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

  factory ArticleModel.fromJson(Map<String, dynamic> json) => ArticleModel(
        image: json["urlToImage"] == null ? null : json["urlToImage"],
        title: json["title"] == null ? null : json["title"],
        description: json["description"] == null ? null : json["description"],
        source: "",
        sourceLogo: "",
      );

  factory ArticleModel.fromCache(Map<String, dynamic> json) => ArticleModel(
        image: json["image"],
        title: json["title"],
        description: json["description"],
        source: json["source"],
        sourceLogo: json["source_logo"],
      );

  Map<String, dynamic> toJson() => {
        "image": image ?? "",
        "title": title ?? "",
        "description": description ?? "",
        "source": source ?? "",
        "source_logo": "",
      };
}
