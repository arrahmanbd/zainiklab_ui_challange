import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zainiklab/core/colors/app_color.dart';

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
              child: MaterialButton(onPressed: () {  }, 
              elevation: 0,
              color: primaryColor,
               shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),),
              child: SVG(asset:IconName.filterIcon,size:32,color: AppColor.whiteColor)),
            ),
          ),
        
        ),
      ),
    );
  }
}
