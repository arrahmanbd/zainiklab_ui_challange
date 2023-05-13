import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/const.dart';
import '../../../models/home/home_model.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 84,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: demoCategories.length,
        itemBuilder: (context, index) => CategoryCard(
          icon: demoCategories[index].icon,
          title: demoCategories[index].title,
          press: () {},
        ),
        separatorBuilder: (context, index) =>
            const SizedBox(width: defaultSpacing),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: press,
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: defaultSpacing / 2, horizontal: defaultSpacing / 4),
        child: Column(
          children: [
            SvgPicture.asset(icon),
            const SizedBox(height: defaultSpacing / 2),
            Text(
              title,
              style: Theme.of(context).textTheme.titleSmall,
            )
          ],
        ),
      ),
    );
  }
}
