
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spaceflight_news/domain/bloc/articles/articles_bloc.dart';
import 'package:flutter_spaceflight_news/presentation/widgets/article_item.dart';
import 'package:flutter_spaceflight_news/presentation/widgets/bottom_loader.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NewsListState();
}

class _NewsListState extends State<NewsScreen> {
  final int _limit = 20;
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArticlesBloc, ArticlesState>(
      builder: (context, state) {
        if (state.status == ArticleStatus.initial) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.status == ArticleStatus.success) {
          return SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                  child: RefreshIndicator(
                    onRefresh: () async => BlocProvider.of<ArticlesBloc>(context).add(ArticlesLoad(limit: _limit)),
                    child: ListView.builder(
                      controller: _scrollController,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemCount: state.hasReachedMax
                          ? state.articles.length
                          : state.articles.length + 1,
                      itemBuilder: (context, index) {
                        return index >= state.articles.length
                            ? BottomLoader()
                            : ArticleItem(state.articles[index], key: Key(index.toString()));
                      },
                    ),
                  )
              )
          );
        } else {
          return ErrorWidget(Exception('Something went wrong'));
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_isBottom) context.read<ArticlesBloc>().add(ArticlesLoad(limit: _limit));
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }
}