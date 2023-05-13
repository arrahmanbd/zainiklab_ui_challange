import 'package:zainiklab/utils/utils.dart';

import '../../core/export.dart';
import '../../core/localization/lang_controller.dart';
import 'components/categories.dart';
import 'components/new_arrival_products.dart';
import 'components/popular_products.dart';
import 'components/search_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const SVG(
              asset: 'assets/icons/menu.svg',
              size: 18,
            )),
        actions: [
          GetBuilder<AppLanguageController>(
            init: AppLanguageController(),
            builder: (controller) {
              return DropdownButton(
                alignment: Alignment.bottomRight,
                dropdownColor: AppColor.secondaryWhite,
                elevation: 0,
                underline: Container(),
                items: const [
                  DropdownMenuItem(
                    value: 'bn',
                    child: Text("বাংলা"),
                  ),
                  DropdownMenuItem(
                    value: 'en',
                    child: Text("Eng"),
                  ),
                ],
                value: controller.appLocale,
                onChanged: (value) {
                  controller.changeLanguage(value.toString());
                  Utils.snackBar('Setting Saved', 'Language change to $value');
                },
              );
            },
          ),
          IconButton(
              onPressed: () {},
              icon: const SVG(
                asset: IconName.notificationIcon,
                size: 20,
                color: AppColor.iconPrimary,
              )),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(defaultSpacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'user_name'.tr,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.w500, color: AppColor.primaryTextColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SVG(asset: IconName.locationIcon, size: 14),
                const SizedBox(width: defaultSpacing / 2),
                Text(
                  "user_lc".tr,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColor.primaryTextColor)
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultSpacing),
              child: SearchForm(),
            ),
            const Categories(),
            const NewArrivalProducts(),
            const PopularProducts(),
          ],
        ),
      ),
    );
  }
}
