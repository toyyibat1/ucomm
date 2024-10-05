import 'package:flutter/material.dart';
import 'package:ucomm/theme/theme_helper.dart';
import 'package:ucomm/core/utils/size_utils.dart';

class CustomTextStyles {
// Body text style
  static get bodyLargeABeeZeeGray80001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray80001,
        fontSize: 18.fSize,
      );
  static get bodyLargeAksaraPrimaryContainer =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyLargeGilroyMedium => theme.textTheme.bodyLarge!.gilroy;
  static get titleLargeABeeWhiteA70001 =>
      theme.textTheme.bodyLarge!.abeezee.copyWith(
        color: appTheme.whiteA70001,
      );
  static get bodyLargeGilroyMediumGray60001 =>
      theme.textTheme.bodyLarge!.gilroy.copyWith(
        color: appTheme.gray60001,
      );

  static get headlineMedium26 => theme.textTheme.headlineMedium!.copyWith(
        fontSize: 26.fSize,
      );

  static get titleMediumGray6000116 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray60001,
        fontSize: 16.fSize,
      );
  static get titleSmallGilroyGray900SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w600,
      );

  static get bodyMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w400,
      );

  static get titleSmallGilroyPrimary =>
      theme.textTheme.titleSmall!.gilroy.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );

  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
}

extension on TextStyle {
  TextStyle get aclonica {
    return copyWith(
      fontFamily: 'Aclonica',
    );
  }

  TextStyle get gilroy {
    return copyWith(
      fontFamily: 'Gilroy',
    );
  }

  TextStyle get monoton {
    return copyWith(
      fontFamily: 'Monoton',
    );
  }

  TextStyle get abel {
    return copyWith(
      fontFamily: 'Abel',
    );
  }

  TextStyle get airbnb {
    return copyWith(
      fontFamily: 'Airbnb',
    );
  }

  TextStyle get aksara {
    return copyWith(
      fontFamily: 'Aksara',
    );
  }

  TextStyle get grotesk {
    return copyWith(
      fontFamily: 'Grotesk',
    );
  }

  TextStyle get abeezee {
    return copyWith(
      fontFamily: 'ABeeZee',
    );
  }
}
