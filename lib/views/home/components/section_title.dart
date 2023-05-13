import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

import '../../../core/colors/app_color.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.pressSeeAll,
  }) : super(key: key);
  final String title;
  final VoidCallback pressSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: AppColor.primaryTextColor,
                fontWeight: FontWeight.w500,
              ),
        ),
        TextButton(
          onPressed: pressSeeAll,
          child: Text(
            "see_all".tr,
            style: const TextStyle(color: AppColor.primaryTextColor),
          ),
        )
      ],
    );
  }
}
