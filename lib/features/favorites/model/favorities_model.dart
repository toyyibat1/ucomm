import 'package:ucomm/core/app_export.dart';

class FavoritiesItemModel {
  String image;
  String title;
  String subtitle;
  String price;

  FavoritiesItemModel({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
  });
}

List<FavoritiesItemModel> favoritesItem = [
  FavoritiesItemModel(
    image: ImageConstant.sprite,
    title: "Sprite Can",
    subtitle: "325ml, Price",
    price: "\$1.50",
  ),
  FavoritiesItemModel(
    image: ImageConstant.coke,
    title: "Diet Coke",
    subtitle: "355ml, Price",
    price: "\$1.99",
  ),
  FavoritiesItemModel(
    image: ImageConstant.juice,
    title: "Apple & Grape Juice",
    subtitle: "1L, Price",
    price: "\$15.50",
  ),
  FavoritiesItemModel(
    image: ImageConstant.coca,
    title: "Coca Cola Can",
    subtitle: "325ml, Price",
    price: "\$4.99",
  ),
  FavoritiesItemModel(
    image: ImageConstant.pepsi,
    title: "Pepsi Can ",
    subtitle: "330ml, Price",
    price: "\$4.99",
  ),
];
