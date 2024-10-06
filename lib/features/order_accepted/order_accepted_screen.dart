import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ucomm/core/app_export.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/theme/custom_text_style.dart';
import 'package:ucomm/theme/theme_helper.dart';
import 'package:ucomm/widgets/custom_elevated_button.dart';

class OrderAcceptedScreen extends ConsumerWidget {
  const OrderAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: SizeUtils.height,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 510.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      height: 232.h,
                      width: double.maxFinite,
                      alignment: Alignment.topCenter,
                    ),
                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color:
                            theme.colorScheme.primaryContainer.withOpacity(0.6),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 32.h),
                          _buildImageColumn(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 458.h,
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.account,
                    height: 252.h,
                    width: double.maxFinite,
                    alignment: Alignment.bottomCenter,
                  ),
                  Container(
                    decoration: BoxDecoration(color: appTheme.whiteA70008c),
                    child: Column(
                      children: [
                        Text(
                          "Your Order has been accepted",
                          style: theme.textTheme.headlineMedium,
                        ),
                        const Text(
                          "Your items has been placcd and is on it’s way to being processed",
                        ),
                        const Spacer(),
                        const CustomElevatedButton(text: "Track Order"),
                        SizedBox(height: 18.h),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Back to home",
                            style: CustomTextStyles.titleMedium_1,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

  _buildImageColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.account,
            height: 240.h,
            width: 268.h,
          )
        ],
      ),
    );
  }
}
