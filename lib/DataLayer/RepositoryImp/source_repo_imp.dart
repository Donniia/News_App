import 'package:injectable/injectable.dart';
import 'package:news/DataLayer/DataSourceContract/source_data_source.dart';
import 'package:news/DataLayer/Model/SourcesResponse/Source.dart';
import 'package:news/RepositoryContract/source_repository.dart';

@Injectable(as:SourcesRepository)
class SourceRepositoryImp extends SourcesRepository{
  SourcesDataSource onlineDataSource;

  @factoryMethod
  SourceRepositoryImp(this.onlineDataSource);
  @override
  Future<List<Source>?> getSources(String categoryId) {
   return onlineDataSource.getSources(categoryId);
  }
  
}