import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ucomm/core/app_export.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/core/utils/validation_functions.dart';
import 'package:ucomm/theme/custom_text_style.dart';
import 'package:ucomm/theme/theme_helper.dart';
import 'package:ucomm/widgets/custom_elevated_button.dart';
import 'package:ucomm/widgets/custom_text_form_filed.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: theme.colorScheme.primaryContainer.withOpacity(1),
      body: SizedBox(
        width: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildImageSection(context),
              SizedBox(height: 28.h),
              _buildEmailPasswordSection(context),
              SizedBox(height: 28.h),
              _buildLoginSection(context),
            ],
          ),
        ),
      ),
    );
  }

  _buildImageSection(BuildContext context) {
    return SizedBox(
      height: 266.h,
      width: double.maxFinite,
      child: Stack(
        children: [
          CustomImageView(
              svgPath: ImageConstant.backgroundImage,
              height: 198.h,
              width: double.maxFinite,
              alignment: Alignment.topCenter),
          Container(
            decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer.withOpacity(0.6)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.h),
                CustomImageView(
                  svgPath: ImageConstant.carrot,
                  height: 54.h,
                  width: 46.h,
                  alignment: Alignment.center,
                ),
                SizedBox(height: 96.h),
                Text(
                  "Loging",
                  style: CustomTextStyles.headlineMedium26,
                ),
                SizedBox(height: 6.h),
                Text(
                  "Enter your emails and password",
                  style: CustomTextStyles.bodyLargeGilroyMediumGray60001,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildEmailPasswordSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Email",
                style: CustomTextStyles.titleMediumGray6000116,
              ),
              SizedBox(height: 16.h),
              CustomTextFormField(
                hintText: "imshuvo97@gmail.com",
                textInputType: TextInputType.emailAddress,
                contentPadding: EdgeInsets.all(12.h),
                validator: (value) {
                  if (value == null ||
                      (!isValidEmail(value, isRequired: true))) {
                    return "Please Enter a valid Email";
                  }
                  return null;
                },
              )
            ],
          ),
        ),
        SizedBox(height: 16.h),
        SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Password",
                style: CustomTextStyles.titleMediumGray6000116,
              ),
              SizedBox(height: 6.h),
              CustomTextFormField(
                contentPadding: EdgeInsets.all(12.h),
                suffixIcon: InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.fromLTRB(16, 8, 2, 8),
                    child: Icon(
                      Icons.visibility,
                      size: 18.h,
                    ),
                  ),
                ),
                obscureText: true,
                // borderDecoration: TextFormFieldStyleHelper.fillGray,
                // filled: true,
                // filledColor: appTheme.gray300,
              )
            ],
          ),
        ),
        SizedBox(height: 18.h),
        Align(
          alignment: Alignment.topRight,
          child: Text(
            "Forgot Password?",
            style: CustomTextStyles.bodyMediumGray900,
            textAlign: TextAlign.end,
          ),
        )
      ],
    );
  }

  _buildLoginSection(BuildContext context) {
    return SizedBox(
      height: 312.h,
      width: double.maxFinite,
      child: Stack(
        children: [
          CustomImageView(
              svgPath: ImageConstant.backgroundImage,
              height: 198.h,
              width: double.maxFinite,
              alignment: Alignment.topCenter),
          Container(
            decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer.withOpacity(0.6)),
            child: Column(
              children: [
                SizedBox(height: 36.h),
                CustomImageView(
                  svgPath: ImageConstant.backgroundImage,
                  height: 54.h,
                  width: 46.h,
                ),
                SizedBox(height: 96.h),
                Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: appTheme.whiteA70008c,
                  ),
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Don't have an Account? ",
                                style: CustomTextStyles
                                    .titleSmallGilroyGray900SemiBold),
                            TextSpan(
                                text: "Sign up",
                                style: CustomTextStyles.titleSmallGilroyPrimary)
                          ],
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
             //     Navigator.pushReplacementNamed(context, AppRoutes.loginScreen);

          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(child: CustomElevatedButton(text: "Log in"))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
