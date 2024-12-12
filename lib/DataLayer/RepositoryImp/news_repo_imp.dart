import 'package:injectable/injectable.dart';
import 'package:news/DataLayer/DataSourceContract/news_data_source.dart';
import 'package:news/DataLayer/Model/NewsResponse/news.dart';
import 'package:news/RepositoryContract/news_repo.dart';

@Injectable(as:NewsRepository )
class NewsRepositoryImp extends NewsRepository{
  NewsDataSource onlineDataSource;

  @factoryMethod
  NewsRepositoryImp(this.onlineDataSource);

  @override
  Future<List<News>> getNews(sourceId) {
    return onlineDataSource.getNews(sourceId);

  }

  @override
  Future<List<News>> searchNews(query) {
  return onlineDataSource.searchNews(query);
  }

}