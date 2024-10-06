import 'package:ucomm/core/app_export.dart';

class AccountModel {
  String image;
  String title;

  AccountModel({
    required this.image,
    required this.title,
  });
}

List<AccountModel> accountModel = [
  AccountModel(
    image: ImageConstant.orders,
    title: "Orders",
  ),
  AccountModel(
    image: ImageConstant.details,
    title: "My Details",
  ),
  AccountModel(
    image: ImageConstant.delivery,
    title: "Delivery Address",
  ),
  AccountModel(
    image: ImageConstant.payment,
    title: "Payment Methods",
  ),
  AccountModel(
    image: ImageConstant.promo,
    title: "Promo Cord",
  ),
  AccountModel(
    image: ImageConstant.bell,
    title: "Notificatios",
  ),
  AccountModel(
    image: ImageConstant.help,
    title: "Help",
  ),
  AccountModel(
    image: ImageConstant.about,
    title: "About",
  ),
];
