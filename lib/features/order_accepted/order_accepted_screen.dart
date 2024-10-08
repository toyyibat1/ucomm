import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ucomm/core/app_export.dart';
import 'package:ucomm/core/utils/navigator_service.dart';
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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: SizeUtils.height,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 600.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // CustomImageView(
                      //   imagePath: ImageConstant.orderAccepted,
                      //   height: 232.h,
                      //   width: double.maxFinite,
                      //   alignment: Alignment.topCenter,
                      // ),
                      Container(
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primaryContainer
                              .withOpacity(0.6),
                        ),
                        child: _buildImageColumn(context),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 458.h,
                child: Stack(
                  children: [
                    // CustomImageView(
                    //   imagePath: ImageConstant.orderAccepted,
                    //   height: 252.h,
                    //   width: double.maxFinite,
                    //   alignment: Alignment.bottomCenter,
                    // ),
                    Container(
                      decoration: BoxDecoration(color: appTheme.whiteA70008c),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          children: [
                            Text(
                              "Your Order has been accepted",
                              style: theme.textTheme.headlineMedium,
                              textAlign: TextAlign.center,
                            ),
                            const Text(
                              "Your items has been placed and is on it’s way to being processed",
                              textAlign: TextAlign.center,
                            ),
                            const Spacer(),
                            const CustomElevatedButton(text: "Track Order"),
                            SizedBox(height: 18.h),
                            TextButton(
                              onPressed: () {
                                NavigationService.popAndPushNamed(
                                    AppRoutes.dashboard);
                              },
                              child: Text(
                                "Back to home",
                                style: CustomTextStyles.titleMedium_1,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }

  _buildImageColumn(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.orderAccepted,
            height: 240.h,
            width: 268.h,
          )
        ],
      ),
    );
  }
}
