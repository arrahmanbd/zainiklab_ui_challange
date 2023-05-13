import '../../../core/export.dart';
import '../../../models/home/product_model.dart';
import '../../details/details_screen.dart';
import 'product_card.dart';
import 'section_title.dart';

class NewArrivalProducts extends StatelessWidget {
  const NewArrivalProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultSpacing),
          child: SectionTitle(
            title: "flash_sales".tr,
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
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailsScreen(product: demoProducts[index]),
                        ));
                  },
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
