part of 'articles_bloc.dart';

abstract class ArticlesEvent extends Equatable {
  const ArticlesEvent();
}

class ArticlesLoad extends ArticlesEvent {
  final int limit;

  const ArticlesLoad({this.limit = 20});

  @override
  List<Object> get props => [limit];
}