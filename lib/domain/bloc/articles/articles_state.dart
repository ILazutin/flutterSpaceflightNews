part of 'articles_bloc.dart';

enum ArticleStatus { initial, success, failure }

class ArticlesState extends Equatable {
  final ArticleStatus status;
  final List<Article> articles;
  final bool hasReachedMax;

  const ArticlesState({
      this.status = ArticleStatus.initial,
      this.articles = const <Article>[],
      this.hasReachedMax = false
  });

  ArticlesState copyWith({
    ArticleStatus? status,
    List<Article>? articles,
    bool? hasReachedMax,
  }) {
    return ArticlesState(
      status: status ?? this.status,
      articles: articles ?? this.articles,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  List<Object> get props => [articles, status, hasReachedMax];
}
