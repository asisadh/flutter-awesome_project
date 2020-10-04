import 'package:assesment/features/github/domain/entities/git_hub.dart';
import 'package:flutter/foundation.dart';

List<GithubModel> githubModelFromJson(Iterable iterable) =>
    List<GithubModel>.from(
        (iterable).map((x) => GithubModel.fromJson(x as Map<String, dynamic>)));

class GithubModel extends Github {
  GithubModel({
    @required int id,
    @required String repoUrl,
    @required String fullName,
    @required String description,
  }) : super(
          id: id,
          repoUrl: repoUrl,
          fullName: fullName,
          description: description,
        );

  factory GithubModel.fromJson(Map<String, dynamic> json) => GithubModel(
        id: json["id"],
        repoUrl: json["repo_url"],
        description: json["description"],
        fullName: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id ?? "",
        "repo_url": repoUrl ?? "",
        "description": description ?? "",
        "name": fullName ?? "",
      };
}
