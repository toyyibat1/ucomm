import 'package:flutter/material.dart';
import 'package:ucomm/core/app_export.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/theme/app_decoration.dart';
import 'package:ucomm/theme/custom_text_style.dart';
import 'package:ucomm/theme/theme_helper.dart';
import 'package:ucomm/widgets/custom_elevated_button.dart';

class CheckoutBottomSheet extends StatelessWidget {
  const CheckoutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              color: appTheme.gray100,
              borderRadius: BorderRadiusStyle.roundedBorder16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildCheckoutHeader(context),
              SizedBox(height: 28.h),
              SizedBox(
                child: Divider(),
              ),
              SizedBox(height: 16.h),
              _buildOrderSummary(context),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
    );
  }

  _buildCheckoutHeader(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                Text(
                  "Checkout",
                  style: theme.textTheme.headlineSmall,
                ),
                Icon(
                  Icons.close,
                  size: 14,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildOrderSummary(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: _buildCheckSection(
              context,
              "Delivery",
              "Select Method",
              false,
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: _buildCheckSection(
              context,
              "Pament",
              "",
              true,
              iconText: Icon(Icons.card_travel_sharp),
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: _buildCheckSection(
              context,
              "Promo Code",
              "Pick discount",
              false,
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: _buildCheckSection(
              context,
              "Total Cost",
              "\$13.97",
              false,
            ),
          ),
          Text(
            "By placing an order you agree to our Terms And Conditions",
          ),
          CustomElevatedButton(text: "Place Order")
        ],
      ),
    );
  }

  _buildCheckSection(
    BuildContext context,
    String title,
    String subtitle,
    bool hasIcon, {
    Widget? iconText,
  }) {
    return Row(
      children: [
        Text(
          title,
          style: CustomTextStyles.titleMediumGray60001,
        ),
        Spacer(),
        if (hasIcon)
          iconText!
        else
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              subtitle,
              style: CustomTextStyles.titleMedium16,
            ),
          ),
        Icon(Icons.arrow_forward_ios)
      ],
    );
  }
}
