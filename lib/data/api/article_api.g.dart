// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ArticleApi implements ArticleApi {
  _ArticleApi(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.spaceflightnewsapi.net/v3/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<ArticleDto>> getArticles(limit, offset) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'_limit': limit,
      r'_start': offset
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<ArticleDto>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'articles',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => ArticleDto.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
