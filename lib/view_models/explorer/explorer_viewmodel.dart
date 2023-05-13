import 'package:get/get.dart';
import '../../data/response/status.dart';
import '../../models/explorer/explorer_model.dart';
import '../../repository/explorer_repository/explorer_repository.dart';

class ExplorerController extends GetxController {
  final _api = ExplorerRepository();

  final rxRequestStatus = Status.loading.obs;
  final explorerListModel = ExplorerModel().obs;
  RxString error = ''.obs;

  void setRxRequestStatus(Status value) => rxRequestStatus.value = value;
  void setExplorerList(ExplorerModel value) =>
      explorerListModel.value = value;
  void setError(String value) => error.value = value;

  void explorerList() {
    //  setRxRequestStatus(Status.LOADING);

    _api.explorerList().then((value) {
      setRxRequestStatus(Status.success);
      setExplorerList(value);
    }).onError((error, stackTrace) {
      setError(error.toString());
      setRxRequestStatus(Status.error);
    });
  }

  void refreshApi() {
    setRxRequestStatus(Status.loading);

    _api.explorerList().then((value) {
      setRxRequestStatus(Status.success);
      setExplorerList(value);
    }).onError((error, stackTrace) {
      setError(error.toString());
      setRxRequestStatus(Status.error);
    });
  }
}
