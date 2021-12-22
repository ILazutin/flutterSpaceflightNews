
import 'package:json_annotation/json_annotation.dart';

part 'article_dto.g.dart';

@JsonSerializable()
class ArticleDto {
  final int id;
  final String title;
  final String url;
  final String imageUrl;
  final String newsSite;
  final String summary;
  final String publishedAt;

  ArticleDto(this.id, this.title, this.url, this.imageUrl, this.newsSite, this.summary, this.publishedAt);

  factory ArticleDto.fromJson(Map<String, dynamic> json) => _$ArticleDtoFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleDtoToJson(this);

}