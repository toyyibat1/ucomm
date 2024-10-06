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
    image: ImageConstant.onboarding,
    title: "Orders",
  ),
  AccountModel(
    image: ImageConstant.onboarding,
    title: "My Details",
  ),
  AccountModel(
    image: ImageConstant.onboarding,
    title: "Delivery Address",
  ),
  AccountModel(
    image: ImageConstant.onboarding,
    title: "Payment Methods",
  ),
  AccountModel(
    image: ImageConstant.onboarding,
    title: "Promo Cord",
  ),
    AccountModel(
    image: ImageConstant.onboarding,
    title: "Notificatios",
  ),
    AccountModel(
    image: ImageConstant.onboarding,
    title: "Help",
  ),
    AccountModel(
    image: ImageConstant.onboarding,
    title: "About",
  ),
];
