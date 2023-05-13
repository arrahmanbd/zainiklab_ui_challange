import 'dart:async';

import '../../core/export.dart';
import '../../core/routes/routes_name.dart';

class SplashServices {
  void fun() {
    // // hide status bar
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    Timer(
      const Duration(seconds: 3),
      () async {
        return Get.toNamed(RouteName.landingPage);
      },
    );
  }
}
