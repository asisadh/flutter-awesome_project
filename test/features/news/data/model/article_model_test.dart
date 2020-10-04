import 'dart:convert';

import 'package:assesment/features/news/data/models/article_model.dart';
import 'package:assesment/features/news/domain/entities/article.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../stub/stub_reader.dart';

void main() {
  final testModel = ArticleModel(
    image:
        "https://cdn.cnn.com/cnnnext/dam/assets/200930035059-mac-davis-file-super-tease.jpg",
    title: "Mac Davis, Elvis songwriter and country star, dead at 78 - CNN",
    description:
        "Legendary country singer and songwriter Mac Davis has died at the age of  78 following heart surgery.",
    source: "CNN",
    sourceLogo: "cnn",
    url: "url",
  );

  test('should be a subclass of Article entity', () {
    //assert
    expect(testModel, isA<Article>());
  });

  group('from json', () {
    test('Should return a valid model when the JSON has values.', () async {
      //arrange
      String stringJSON = stub(path: 'news', name: 'news.json');
      final Map<String, dynamic> jsonMap =
          json.decode(stringJSON) as Map<String, dynamic>;

      //act
      final result = ArticleModel.fromJson(jsonMap);

      //assert
      expect(result, isA<ArticleModel>());
      expect(result, testModel);
    });
  });
}
