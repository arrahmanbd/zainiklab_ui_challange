import '../../core/app_url/app_url.dart';
import '../../data/network/network_api_services.dart';
import '../../models/explorer/explorer_model.dart';

class ExplorerRepository {
  final _apiService = NetworkApiServices();

  Future<ExplorerModel> explorerList() async {
    dynamic response = await _apiService.getApi(AppUrl.explorerApi);
    return ExplorerModel.fromJson(response);
  }
}
