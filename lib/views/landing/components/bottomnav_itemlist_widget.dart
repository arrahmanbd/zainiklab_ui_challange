import '../../../core/export.dart';
import '../../../view_models/landing/landing_controller.dart';

class BottomNavigationItemList extends StatelessWidget {
  const BottomNavigationItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColor.whiteColor,
      notchMargin: 0.0,
      height: MediaQuery.of(context).size.height * .8,
      shape: const CircularNotchedRectangle(),
      child: Container(
        padding: const EdgeInsets.only(top: defaultSpacing - 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            iconNav(IconName.homeIcon, "nav_home".tr, 0),
            iconNav(IconName.discoverIcon, "nav_explore".tr, 1),
            const SizedBox(width: 48,height: 48,),
            iconNav(IconName.messageIcon, "nav_message".tr, 2),
            iconNav(IconName.bagIcon, "nav_store".tr, 3),
          ],
        ),
      ),
    );
  }
}

Widget iconNav(String icon, String txt, int identifierVal) {
  final LandingPageController setTab = Get.put(LandingPageController());
  return Obx(
    () {
      return InkWell(
        onTap: () {
          setTab.changeTabIndex(identifierVal);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SVG(
              asset: icon,
              size: 20,
              color: setTab.tabIndex.value == identifierVal
                  ? AppColor.activeColor
                  : AppColor.primaryTextColor,
            ),
            // const SizedBox(height: 2.0),
            Text(
              txt,
              style: TextStyle(
                color: setTab.tabIndex.value == identifierVal
                    ? AppColor.activeColor
                    : AppColor.primaryTextColor,
              ),
            )
          ],
        ),
      );
    },
  );
}
