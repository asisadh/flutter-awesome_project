import 'package:equatable/equatable.dart';

class Github extends Equatable {
  final int id;
  final String repoUrl;
  final String fullName;
  final String description;

  Github({
    this.id,
    this.repoUrl,
    this.fullName,
    this.description,
  });

  @override
  List<Object> get props => [
        id,
        repoUrl,
        fullName,
        description,
      ];
}
