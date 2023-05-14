import 'package:get/get.dart';

class LandingPageController extends GetxController {
  RxInt tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }
}
