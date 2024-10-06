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
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
                color: appTheme.whiteA70001,
                borderRadius: BorderRadiusStyle.roundedBorder16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close)),
                ),
                SizedBox(height: 20.h),
                CustomImageView(
                  imagePath: ImageConstant.orderFailed,
                  height: 222.h,
                  width: 222.h,
                  onTap: () {},
                ),
                SizedBox(height: 12.h),
                Text("Oops! Order Failed",
                    style: theme.textTheme.headlineMedium),
                SizedBox(height: 16.h),
                Text("Something went tembly wrong.",
                    style: theme.textTheme.bodyLarge),
                SizedBox(height: 40.h),
                const CustomElevatedButton(
                  text: "Please Try Again",
                ),
                SizedBox(height: 18.h),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Back to home",
                      style: CustomTextStyles.titleMedium_1),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
