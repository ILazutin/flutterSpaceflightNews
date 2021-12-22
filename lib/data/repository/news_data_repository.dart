
import 'package:flutter_spaceflight_news/data/api/article_api.dart';
import 'package:flutter_spaceflight_news/data/mappers/article_mapper.dart';
import 'package:flutter_spaceflight_news/domain/model/article.dart';
import 'package:flutter_spaceflight_news/domain/repository/news_repository.dart';
import 'package:dio/dio.dart';

class NewsDataRepository extends NewsRepository {
  @override
  Future<List<Article>> getArticles(int limit, int offset) async {
    return (await ArticleApi(Dio()).getArticles(limit, offset))
        .map((data) => ArticleMapper.fromDto(data)).toList();

  }
  
}