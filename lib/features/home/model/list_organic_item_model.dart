import 'package:ucomm/core/utils/image_constant.dart';

class ItemModel {
  String? image;
  String? title;
  String? desc;

  String? subtitle;
  String? price;

  ItemModel({this.image, this.title, this.desc, this.subtitle, this.price});
}

List<ItemModel> items = [
  ItemModel(
    image: ImageConstant.banana,
    title: "Organic Bananas",
    desc:
        "Bananas are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    subtitle: "7pcs, Priceg",
    price: "\$4.99",
  ),
  ItemModel(
    image: ImageConstant.apple,
    title: "Red Apple",
    desc:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    subtitle: "1kg, Priceg",
    price: "\$4.99",
  ),
  ItemModel(
    image: ImageConstant.banana,
    title: "Organic Bananas",
    desc:
        "Bananas are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    subtitle: "7pcs, Priceg",
    price: "\$4.99",
  ),
];
