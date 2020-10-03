import 'dart:async';

import 'package:assesment/core/usecases/usecase.dart';
import 'package:assesment/features/news/domain/entities/article_list.dart';
import 'package:assesment/features/news/domain/usecases/get_latest_news.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'news_event.dart';
part 'news_state.dart';
part 'news_bloc.freezed.dart';

@injectable
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final GetLatestNews getLatestNews;

  NewsBloc({
    @required this.getLatestNews,
  }) : super(NewsState.loading());

  @override
  Stream<NewsState> mapEventToState(
    NewsEvent event,
  ) async* {
    yield* event.map(fetchNews: (e) async* {
      yield NewsState.loading();
      final result = await getLatestNews(NoParams());
      yield result.fold(
        (failure) => NewsState.failed(failure.toString()),
        (news) => NewsState.success(news),
      );
    });
  }
}
