
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spaceflight_news/domain/bloc/articles/articles_bloc.dart';
import 'package:flutter_spaceflight_news/presentation/screens/news.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: BlocProvider(
          create: (context) => ArticlesBloc()..add(const ArticlesLoad()),
          child: const NewsScreen(),
        )
    );
  }
  
}