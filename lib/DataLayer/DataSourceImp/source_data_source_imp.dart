import 'package:injectable/injectable.dart';
import 'package:news/DataLayer/API/api_manager.dart';
import 'package:news/DataLayer/DataSourceContract/source_data_source.dart';
import 'package:news/DataLayer/Model/SourcesResponse/Source.dart';

@Injectable(as: SourcesDataSource)
class SourcesDataSourceImp extends SourcesDataSource {
  ApiManager api;

  @factoryMethod
  SourcesDataSourceImp(this.api);

  @override
  Future<List<Source>?> getSources(String categoryId) async {
    var response = await api.getSources(categoryId);
    return response!.sources;
  }
}
