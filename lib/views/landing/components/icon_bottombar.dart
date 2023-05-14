import 'package:flutter/material.dart';

import '../../../core/colors/app_color.dart';
import '../../../core/constants/const.dart';
import '../../../utils/utils.dart';
import 'bottomnav_itemlist_widget.dart';

class IconBottomBar extends StatelessWidget {
  const IconBottomBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: Stack(
        children: [
          const BottomNavigationItemList(),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Utils.openDialog();
              },
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: AppColor.iconPrimary,
                padding: const EdgeInsets.all(defaultSpacing),
                elevation: 0.0,
              ),
              child: const Icon(
                Icons.add,
                color: AppColor.whiteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
