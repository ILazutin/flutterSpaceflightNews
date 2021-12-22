
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_spaceflight_news/domain/model/article.dart';
import 'package:flutter_spaceflight_news/internal/dependencies/repository_module.dart';

part 'articles_event.dart';
part 'articles_state.dart';

class ArticlesBloc extends Bloc<ArticlesEvent, ArticlesState> {
  ArticlesBloc() : super(const ArticlesState()) {
    on<ArticlesLoad>((event, emit) async {
      if (state.hasReachedMax) return;
      try {
        if (state.status == ArticleStatus.initial) {
          final articles = await RepositoryModule
              .newsRepository().getArticles(event.limit, state.articles.length);

          return emit(state.copyWith(
            status: ArticleStatus.success,
            articles: articles,
            hasReachedMax: false,
          ));
        }
        final articles = await RepositoryModule
            .newsRepository().getArticles(event.limit, state.articles.length);

        emit(articles.isEmpty
            ? state.copyWith(hasReachedMax: true)
            : state.copyWith(
          status: ArticleStatus.success,
          articles: List.of(state.articles)..addAll(articles),
          hasReachedMax: false,
        ));
      } catch (_) {
        emit(state.copyWith(status: ArticleStatus.failure));
      }
    });
  }
}
