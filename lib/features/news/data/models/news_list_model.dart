import 'package:assesment/features/news/data/models/article_model.dart';
import 'package:assesment/features/news/domain/entities/article_list.dart';
import 'package:flutter/foundation.dart';

class ArticlesListModel extends ArticlesList {
  ArticlesListModel({@required List<ArticleModel> articles})
      : super(
          articles: articles,
        );

  factory ArticlesListModel.fromJson(Map<String, dynamic> json) =>
      ArticlesListModel(
        articles: json["articles"] == null
            ? null
            : List<ArticleModel>.from(
                json["articles"].map((x) => ArticleModel.fromJson(x))),
      );

  factory ArticlesListModel.fromCache(Map<String, dynamic> json) =>
      ArticlesListModel(
        articles: json["articles"] == null
            ? null
            : List<ArticleModel>.from(
                json["articles"].map((x) => ArticleModel.fromCache(x))),
      );

  Map<String, dynamic> toJson() => {
        "articles": articles == null
            ? null
            : List<dynamic>.from(
                articles.map((x) => (x as ArticleModel).toJson())),
      };
}
