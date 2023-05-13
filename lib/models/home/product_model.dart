import '../../core/export.dart';

class HomeProduct {
  final String image, title;
  final int price;
  final Color bgColor;

  HomeProduct({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<HomeProduct> demoProducts = [
  HomeProduct(
    image: "assets/images/product_0.png",
    title: "Long Sleeve Shirts",
    price: 165,
    bgColor: const Color(0xFFFEFBF9),
  ),
  HomeProduct(
    image: "assets/images/product_1.png",
    title: "Casual Henley Shirts",
    price: 99,
  ),
  HomeProduct(
    image: "assets/images/product_2.png",
    title: "Curved Hem Shirts",
    price: 180,
    bgColor: const Color(0xFFF8FEFB),
  ),
  HomeProduct(
    image: "assets/images/product_1.png",
    title: "Casual Nolin",
    price: 149,
    bgColor: const Color(0xFFEEEEED),
  ),
];
