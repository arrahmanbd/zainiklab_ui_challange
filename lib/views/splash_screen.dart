import '../core/export.dart';
import '../view_models/splash/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashScreen = SplashServices();

  @override
  void initState() {
    super.initState();
    splashScreen.fun();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColor.activeColor,
        statusBarBrightness: Brightness.light,
      ),
    );
    return Scaffold(
      backgroundColor: AppColor.activeColor,
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
              style: const TextStyle(
                  color: AppColor.secondaryWhite, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
