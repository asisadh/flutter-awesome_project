import 'package:assesment/features/news/domain/entities/article.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class ArticlesList extends Equatable {
  ArticlesList({
    @required this.articles,
  });

  List<Article> articles;

  @override
  List<Object> get props => [articles];
}
