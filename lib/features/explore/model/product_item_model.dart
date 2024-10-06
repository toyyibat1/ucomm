import 'dart:ui';

import 'package:ucomm/core/app_export.dart';

class ProductItemModel {
  String image;
  String title;
  Color color;

  ProductItemModel({
    required this.image,
    required this.title,
    required this.color,
  });
}

List<ProductItemModel> productItemModel = [
  ProductItemModel(
    image: ImageConstant.freshfruits,
    title: "Frash Fruits & Vegetable",
    color: const Color(0x53B1751A),
  ),
  ProductItemModel(
    image: ImageConstant.oil,
    title: "Cooking Oil & Ghee",
    color: const Color(0xF8A44C1A),
  ),
  ProductItemModel(
      image: ImageConstant.meat,
      title: "Meat & Fish",
      color: const Color(0xFFF7A593)),
  ProductItemModel(
    image: ImageConstant.bakery,
    title: "Bakery & Snacks",
    color: const Color(0xFFD3B00E0),
  ),
  ProductItemModel(
    image: ImageConstant.diaryEggss,
    title: "Dairy & Eggs",
    color: const Color(0xFFFDE598),
  ),
  ProductItemModel(
    image: ImageConstant.beverages,
    title: "Beverages",
    color: const Color(0xFFB7DFF5),
  ),
];
