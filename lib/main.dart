
import 'core/export.dart';
main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  //   // Change the status bar color
  //  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //     statusBarColor: AppColor.whiteColor, // Change the color as needed
  //     statusBarBrightness: Brightness.light,
  //     statusBarIconBrightness: Brightness.dark,
  //   ));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZainikLab',
      translations: Languages(),
      locale: const Locale('en'),
      fallbackLocale: const Locale('en'),
      theme: AppTheme.lightTheme,
      getPages: AppRoutes.appRoutes(),
    );
  }
}
