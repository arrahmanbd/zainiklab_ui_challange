
import '../export.dart';

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide.none,
);

class ExploreSearchForm extends StatelessWidget {
  const ExploreSearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: AppColor.secondaryWhite),
        ),
        color: AppColor.whiteColor,
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 16.0, right: 16, top: 36, bottom: 26),
        child: Container(
          height: 44,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
          ),
          // padding: EdgeInsets.symmetric(horizontal: 16),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              IconButton(
                icon: const SVG(
                  asset: IconName.searchIcon,
                  size: 24,
                  color: AppColor.iconPrimary,
                ),
                onPressed: () {
                  // Add your search functionality here
                },
              ),
              TextFormField(
                decoration:  InputDecoration(
                 hintText: "search_placeholder".tr,
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.only(left: 48),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
