import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../repository/storage_repository/shared_preferences.dart';

class AppLanguageController extends GetxController {
  String appLocale = 'en';
  LocalStorage localStorage = LocalStorage();
  @override
  void onInit() async {
    super.onInit();
    var lang = localStorage.getLanguage;
    String appLocale = lang.toString();
    Get.updateLocale(Locale(appLocale));
  }

  void changeLanguage(String type) async {
    localStorage.saveLanguageToDisk(type);
    appLocale = type;
    Get.updateLocale(Locale(type));
    update();
  }
}
