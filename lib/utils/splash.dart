import 'package:flutter/cupertino.dart';

import '../core/export.dart';
import '../core/routes/routes_name.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Add any additional logic or duration you want for the splash screen
    Future.delayed(const Duration(seconds: 3), () {
      Get.toNamed(RouteName.landingPage);
    });
//Then Set the Status Bar Color
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SVG(
              asset: IconName.logoIcon,
              size: 72,
              color: AppColor.whiteColor,
            ),
            const SizedBox(height: 10.0),
            Text(
              'splash_text'.tr,
              textAlign: TextAlign.center,
              style:
                  const TextStyle(color: AppColor.secondaryWhite, fontSize: 24),
            ),
            const SizedBox(height: 40.0),
            const CupertinoActivityIndicator(),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
