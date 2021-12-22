// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleDto _$ArticleDtoFromJson(Map<String, dynamic> json) => ArticleDto(
      json['id'] as int,
      json['title'] as String,
      json['url'] as String,
      json['imageUrl'] as String,
      json['newsSite'] as String,
      json['summary'] as String,
      json['publishedAt'] as String,
    );

Map<String, dynamic> _$ArticleDtoToJson(ArticleDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'imageUrl': instance.imageUrl,
      'newsSite': instance.newsSite,
      'summary': instance.summary,
      'publishedAt': instance.publishedAt,
    };
