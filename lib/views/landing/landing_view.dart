import '../../core/export.dart';
import '../../models/export.dart';
import '../details/details_screen.dart';
import '../explorer/explorer_view.dart';
import '../home/home_screen.dart';
import '../store/store_view.dart';
import '../../view_models/landing/landing_controller.dart';
import 'components/icon_bottombar.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
          const SystemUiOverlayStyle(
            statusBarColor: AppColor.whiteColor, 
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
          ),
        );
    final LandingPageController pageControl =
        Get.put(LandingPageController(), permanent: false);
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const IconBottomBar(),
        body: Obx(
          () => IndexedStack(
            index: pageControl.tabIndex.value,
            children: [
              const HomeScreen(),
              const ExplorerView(),
              DetailsScreen(
                product: demoProducts[1],
              ),
              const StoreView(),
            ],
          ),
        ),
      ),
    );
  }
}
