import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colors/app_color.dart';

class SVG extends StatelessWidget {
  final String? asset;
  final double? size;
  final Color? color;
   const SVG({
    Key? key,
    this.asset,
    this.size = 13,
     this.color = AppColor.iconPrimary,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      asset.toString(),
      height: size,
      width: size,
      // ignore: deprecated_member_use
      color: color,
    );
  }
}
