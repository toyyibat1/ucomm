import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ucomm/core/app_export.dart';
import 'package:ucomm/theme/custom_text_style.dart';
import 'package:ucomm/theme/theme_helper.dart';

import 'notifier/splash_screen_notifier.dart';

final storageProvider = Provider((ref) => const FlutterSecureStorage());

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Listen to the splash screen state
    final splashState = ref.watch(splashScreenProvider);

    // Start the splash screen timer when the widget builds
    ref.read(splashScreenProvider.notifier).startSplash();

    // Check if the splash is done, and navigate to another screen
    if (splashState.isSplashDone) {
      Future.microtask(() async {
        Navigator.pushReplacementNamed(context, AppRoutes.loginScreen);
      });
    }

    return Scaffold(
      backgroundColor: appTheme.black900DB,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgBrandLogo,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 32),
            Text(
              'The Best Online Store.',
              style: CustomTextStyles.titleLargeABeeWhiteA70001,
            )
          ],
        ),
      ),
    );
  }
}
