import '../../core/export.dart';
import '../../models/export.dart';
import 'components/color_dot.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final HomeProduct product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        backgroundColor: product.bgColor,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
                backgroundColor: Colors.white,
                child: SVG(
                  asset: IconName.heartIcon,
                  size: 20,
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Image.asset(
                product.image,
                height: MediaQuery.of(context).size.height * 0.4,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: defaultSpacing * 1.5),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(defaultSpacing,
                      defaultSpacing * 2, defaultSpacing, defaultSpacing),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              product.title,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          const SizedBox(width: defaultSpacing),
                          Text(
                            "\$${product.price}",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: defaultSpacing),
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
                        ),
                      ),
                      Text(
                        "colors".tr,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      const SizedBox(height: defaultSpacing / 2),
                      const Row(
                        children: [
                          ColorDot(
                            color: Color(0xFFBEE8EA),
                            isActive: false,
                          ),
                          ColorDot(
                            color: Color(0xFF141B4A),
                            isActive: true,
                          ),
                          ColorDot(
                            color: Color(0xFFF4E5C3),
                            isActive: false,
                          ),
                        ],
                      ),
                      const SizedBox(height: defaultSpacing * 2),
                      Center(
                        child: SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: primaryColor,
                                shape: const StadiumBorder()),
                            child: Text(
                              "add_cart".tr,
                              style:
                                  const TextStyle(color: AppColor.whiteColor),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
