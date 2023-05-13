import '../../core/export.dart';
import '../../utils/utils.dart';

class StoreView extends StatelessWidget {
  const StoreView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultSpacing),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SVG(
            asset: IconName.emptyCart,
            size: 220,
          ),
          const SizedBox(height: 10.0),
          const Center(
            child: Text(
              "No Item Found,\nBrowse and start shopping",
              style: TextStyle(color: AppColor.primaryTextColor,fontSize: 24),
            ),
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  Utils.openDialog();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: const StadiumBorder()),
                child: const Text(
                  "Shop Now",
                  style: TextStyle(color: AppColor.whiteColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
