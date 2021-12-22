
import 'package:flutter_spaceflight_news/data/model/article_dto.dart';
import 'package:flutter_spaceflight_news/domain/model/article.dart';

class ArticleMapper {

  static Article fromDto(ArticleDto data) {
    return Article(
      data.id,
      data.title,
      data.url,
      data.imageUrl,
      data.newsSite,
      data.summary,
      DateTime.parse(data.publishedAt)
    );
  }
}