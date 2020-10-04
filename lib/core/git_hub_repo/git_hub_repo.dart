import 'dart:convert';

import 'package:assesment/core/errors/exceptions.dart';
import 'package:assesment/utils/app_constants.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class GitHubRepoProtocol {
  Future<Iterable> getResturantList();
}

@LazySingleton(as: GitHubRepoProtocol)
class GitHubRepo implements GitHubRepoProtocol {
  final http.Client client;

  GitHubRepo({
    @required this.client,
  });

  @override
  Future<Iterable> getResturantList() async {
    final response = await client.get(GitHubConstant.BASE_URL);

    final statusCode = response.statusCode;

    if (statusCode == 200) {
      final iterable = json.decode(response.body) as Iterable;
      final formattedData = [];
      for (Map<String, dynamic> data in iterable) {
        final id = data["id"];
        final fullName = data["name"];
        final repoUrl = data["html_url"];
        final description = data["description"];

        final map = Map<String, dynamic>();
        map["id"] = id;
        map["name"] = fullName;
        map["repo_url"] = repoUrl;
        map["description"] = description;

        formattedData.add(map);
      }
      return formattedData;
    } else {
      throw ServerException();
    }
  }
}
