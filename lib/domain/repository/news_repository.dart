
import 'package:flutter_spaceflight_news/domain/model/article.dart';

abstract class NewsRepository {

  Future<List<Article>> getArticles(int limit, int offset);

}