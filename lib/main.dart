import 'core/export.dart';
import 'repository/language_repository/lang_controller.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final LocaleController locale = Get.put(LocaleController());

  @override
  Widget build(BuildContext context) {
    final langs = locale.getSavedLocale();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZainikLab',
      translations: Languages(),
      locale: langs,
      fallbackLocale: const Locale('en', 'US'),
      theme: AppTheme.lightTheme,
      getPages: AppRoutes.appRoutes(),
    );
  }
}
