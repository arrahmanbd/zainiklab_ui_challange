import 'dart:async';

import '../../core/export.dart';
import '../../core/routes/routes_name.dart';

class SplashServices {
  void fun() {
    // // hide status bar
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
     Timer(const Duration(seconds: 3), () => Get.toNamed(RouteName.landingPage));
       SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor:AppColor.whiteColor, // Change the color as needed
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,)
    );
  }
}
