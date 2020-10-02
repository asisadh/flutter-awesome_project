part of 'news_bloc.dart';

@freezed
abstract class NewsState with _$NewsState {
  const factory NewsState.loading() = _Loading;
  const factory NewsState.success(ArticlesList list) = _Success;
  const factory NewsState.failed(String message) = _Failed;
}
