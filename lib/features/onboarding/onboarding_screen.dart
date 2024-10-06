import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ucomm/core/utils/image_constant.dart';
import 'package:ucomm/core/utils/navigator_service.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/routes/app_routes.dart';
import 'package:ucomm/theme/custom_text_style.dart';
import 'package:ucomm/theme/theme_helper.dart';
import 'package:ucomm/widgets/custom_elevated_button.dart';
import 'package:ucomm/widgets/custom_image_view.dart';

class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: theme.colorScheme.primaryContainer.withOpacity(1),
      body: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer.withOpacity(1),
            image: DecorationImage(
                image: AssetImage(
                  ImageConstant.onboarding,
                ),
                fit: BoxFit.fill)),
        child: Column(
          children: [const Spacer(), _buildSettingSection(context)],
        ),
      ),
    );
  }

  _buildSettingSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30.h, top: 30.h, right: 30.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [appTheme.gray90000, appTheme.gray600],
        ),
      ),
      child: Column(children: [
        CustomImageView(
          svgPath: ImageConstant.carrot,
          height: 56.h,
          width: 48.h,
        ),
        SizedBox(height: 24.h),
        Container(
          height: 200.h,
          width: double.maxFinite,
          margin: EdgeInsets.symmetric(horizontal: 34.h),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Welcome\nto our store ",
                  maxLines: 4,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.displayMedium,
                ),
              ),
              Text(
                "Fast and secure ecommerce platform",
                style: CustomTextStyles.bodyLargeAksaraPrimaryContainer,
              ),
            ],
          ),
        ),
        SizedBox(height: 24.h),
        CustomElevatedButton(
          text: 'Get Started',
          onPressed: () {
            NavigationService.pushNamed(AppRoutes.loginScreen);
          },
        ),
        SizedBox(height: 58.h),
      ]),
    );
  }
}
