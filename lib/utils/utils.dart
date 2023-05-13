import 'dart:ui';
import 'package:fluttertoast/fluttertoast.dart';
import '../core/export.dart';
import '../core/components/alert_dialouge.dart';

class Utils {
  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColor.blackColor,
      textColor: AppColor.whiteColor,
      gravity: ToastGravity.BOTTOM,
      toastLength: Toast.LENGTH_LONG,
    );
  }

  static toastMessageCenter(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColor.blackColor,
      gravity: ToastGravity.CENTER,
      toastLength: Toast.LENGTH_LONG,
      textColor: AppColor.whiteColor,
    );
  }

  static snackBar(String title, String message) {
    Get.snackbar(title, message, snackPosition: SnackPosition.TOP);
  }

  static void openDialog() {
    // hide status bar
    Get.dialog(BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: const CustomProfileCardDialog(),
    )).then((value) {
      // restore system UI visibility
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: SystemUiOverlay.values);
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.whiteColor, // Change the color as needed
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ));
    });
  }
}
