import 'package:news/DataLayer/Model/NewsResponse/news.dart';

abstract class NewsDataSource{
  Future<List<News>> getNews(String sourceId);
  Future<List<News>> searchNews(String query);
}