import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ucomm/core/utils/image_constant.dart';
import 'package:ucomm/theme/theme_helper.dart';

class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: theme.colorScheme.primaryContainer.withOpacity(1),
      body: Container(
          decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer.withOpacity(1),
              image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.backgroundImage,
                  ),
                  fit: BoxFit.fill)),
          child: Column(
            children: [],
          )),
    );
  }
}
