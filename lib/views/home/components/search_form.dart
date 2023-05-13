import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../core/assets/image_assets.dart';
import '../../../core/components/svg_icon.dart';
import '../../../core/constants/const.dart';


const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide.none,
);

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        onSaved: (value) {},
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: "search_placeholder".tr,
          border: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          errorBorder: outlineInputBorder,
          prefixIcon: const Padding(
            padding: EdgeInsets.all(14),
            child: SVG(asset: IconName.searchIcon,size: 20,),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultSpacing, vertical: defaultSpacing / 2),
            child: SizedBox(
              width: 48,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: primaryColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
                onPressed: () {},
                child: SvgPicture.asset("assets/icons/Filter.svg"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
