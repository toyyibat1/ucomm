import 'package:ucomm/core/app_export.dart';

class CartItemModel {
  String image;
  String title;
  String subtitle;
  String price;

  CartItemModel({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
  });
}

List<CartItemModel> cartItem = [
  CartItemModel(
    image: ImageConstant.pepper,
    title: "Sprite Can",
    subtitle: "325ml, Price",
    price: "\$1.50",
  ),
  CartItemModel(
    image: ImageConstant.diaryEggss,
    title: "Diet Coke",
    subtitle: "355ml, Price",
    price: "\$1.99",
  ),
  CartItemModel(
    image: ImageConstant.banana,
    title: "Apple & Grape Juice",
    subtitle: "1L, Price",
    price: "\$15.50",
  ),
  CartItemModel(
    image: ImageConstant.oil,
    title: "Coca Cola Can",
    subtitle: "325ml, Price",
    price: "\$4.99",
  ),
  CartItemModel(
    image: ImageConstant.apple,
    title: "Pepsi Can ",
    subtitle: "330ml, Price",
    price: "\$4.99",
  ),
];
