
import 'package:flutter_spaceflight_news/data/repository/news_data_repository.dart';
import 'package:flutter_spaceflight_news/domain/repository/news_repository.dart';

class RepositoryModule {
  static NewsRepository? _newsRepository;

  static NewsRepository newsRepository() {
    _newsRepository ??= NewsDataRepository();
    return _newsRepository!;
  }
}
