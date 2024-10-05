import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ucomm/core/app_export.dart';

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
        // Check if token exists in secure storage
        final storage = ref.read(storageProvider);
        final token = await storage.read(key: 'token');

        if (token != null) {
          // Navigate to dashboard if token exists
          Navigator.pushReplacementNamed(context, AppRoutes.dashboard);
        } else {
          // Navigate to login if no token found
          Navigator.pushReplacementNamed(context, AppRoutes.loginScreen);
        }
      });
    }

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: CustomImageView(
            imagePath: ImageConstant.imgBrandLogo,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
