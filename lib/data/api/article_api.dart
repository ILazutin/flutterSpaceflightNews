
import 'package:flutter_spaceflight_news/data/model/article_dto.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'article_api.g.dart';

@RestApi(baseUrl: 'https://api.spaceflightnewsapi.net/v3/')
abstract class ArticleApi {

  factory ArticleApi(Dio dio, {String baseUrl}) = _ArticleApi;

  @GET('articles')
  Future<List<ArticleDto>> getArticles(
      @Query('_limit') int limit,
      @Query('_start') int offset);
}