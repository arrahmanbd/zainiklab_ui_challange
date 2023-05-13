import '../../../core/export.dart';
import '../../../models/home/product_model.dart';
import 'product_card.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultSpacing),
          child: SectionTitle(
            title: "trending".tr,
            pressSeeAll: () {},
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demoProducts.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: defaultSpacing),
                child: ProductCard(
                  title: demoProducts[index].title,
                  image: demoProducts[index].image,
                  price: demoProducts[index].price,
                  bgColor: demoProducts[index].bgColor,
                  press: () {},
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
