import 'package:flutter/material.dart';
import 'package:ucomm/core/app_export.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/theme/app_decoration.dart';
import 'package:ucomm/theme/custom_text_style.dart';
import 'package:ucomm/theme/theme_helper.dart';
import 'package:ucomm/widgets/custom_elevated_button.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40.h),
              Container(
                decoration: BoxDecoration(
                    color: appTheme.whiteA70001,
                    borderRadius: BorderRadiusStyle.roundedBorder16),
                child: Column(
                  children: [
                    SizedBox(height: 40.h),
                    CustomImageView(
                      imagePath: ImageConstant.backgroundImage,
                      height: 14.h,
                      width: 14.h,
                      onTap: () {},
                    ),
                    SizedBox(height: 18.h),
                    CustomImageView(
                      imagePath: ImageConstant.backgroundImage,
                      height: 220.h,
                      width: double.maxFinite,
                      onTap: () {},
                    ),
                    SizedBox(height: 46.h),
                    Text("Oops! Order Failed",
                        style: theme.textTheme.headlineMedium),
                    SizedBox(height: 16.h),
                    Text("Something went tembly wrong.",
                        style: theme.textTheme.bodyLarge),
                    SizedBox(height: 60.h),
                    CustomElevatedButton(
                      text: "Please Try Again",
                    ),
                    SizedBox(height: 18.h),
                    Text("Back to home", style: CustomTextStyles.titleMedium_1),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
