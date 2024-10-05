import 'package:flutter/material.dart';
import 'package:ucomm/core/utils/size_utils.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme

  PrimaryColors _getThemeColors() {
    return PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme = ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA70001,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          elevation: 0,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.secondary,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: colorScheme.secondaryContainer.withOpacity(0.03)),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray400.withOpacity(0.3),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray900,
          fontSize: 16.fSize,
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray60001,
          fontSize: 14.fSize,
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w400,
        ),
        displayLarge: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 58.fSize,
          fontFamily: 'Monoton',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 48.fSize,
          fontFamily: 'Abel',
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          color: appTheme.gray900,
          fontSize: 28.fSize,
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: appTheme.gray900,
          fontSize: 24.fSize,
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w600,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray900,
          fontSize: 12.fSize,
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: appTheme.gray60001,
          fontSize: 9.fSize,
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: appTheme.gray900,
          fontSize: 20.fSize,
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          color: appTheme.gray900,
          fontSize: 18.fSize,
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.indigoA20001,
          fontSize: 14.fSize,
          fontFamily: 'Grotesk',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static const primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF1A48FF),
    primaryContainer: Color(0XB2FCFCFC),
    secondaryContainer: Color(0X261A48FF),
    errorContainer: Color(0xFF181B19),
    onErrorContainer: Color(0XB253B175),
    onPrimary: Color(0XFF030303),
    onPrimaryContainer: Color(0XFF3D413F),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900DB => const Color(0XD8000000);

  Color get black => const Color(0XFF000000);

  // Blue
  Color get blue100 => const Color(0XFFB7DFF5);
  Color get blueA200 => const Color(0XFF5286F9);

  // BlueGray
  Color get blueGray400 => const Color(0XFF8B91A0);
  Color get blueGray50 => const Color(0XFFF1F2F2);
  Color get blueGray800 => const Color(0XFF334355);

  // DeepOrange
  Color get deepOrange200 => const Color(0XFFF7A593);
  Color get deepOrangeA200 => const Color(0XFFF3603F);

  //Purple
  Color get deepPurpleA20026 => const Color(0X26836AF6);

  // Gray
  Color get gray100 => const Color(0XFFF2F3F2);
  Color get gray200 => const Color(0XFFF0F0F0);
  Color get gray20001 => const Color(0XFFEBEBEB);
  Color get gray300 => const Color(0XFFE2E2E2);
  Color get gray400 => const Color(0XFFB1B1B1);
  Color get gray40001 => const Color(0XFFB3B3B3);
  Color get gray40002 => const Color(0XFFC2C2C2);
  Color get gray40003 => const Color(0XFFC5C5C5);
  Color get gray600 => const Color(0XFF848484);
  Color get gray60001 => const Color(0XFF7C7C7C);
  Color get gray800 => const Color(0XFF3E423F);
  Color get gray80001 => const Color(0XFF4C4E4D);
  Color get gray900 => const Color(0XFF1B1725);
  Color get gray90000 => const Color(0X000D1727);

  //indigo
  Color get indigo507f => const Color(0X7FE6EAF3);
  Color get indigoA100 => const Color(0XFF6E89FA);
  Color get indigoA200 => const Color(0XFF637BfE);
  Color get indigoA20001 => const Color(0XFF5468FF);
  Color get indigoA400 => const Color(0XFF3D6DEB);

//orange
  Color get orange300 => const Color(0XFFFFB655);
  Color get orangeA200 => const Color(0XFFF6B23B);
  Color get orangeA200B2 => const Color(0XB2F8A44C);

  // Red
  Color get red700 => const Color(0XFFDE143A);
  Color get red800 => const Color(0XFFA74242);

  Color get pink40026 => const Color(0X26D73B77);

  Color get purple100 => const Color(0XFFB3B0E0);
  Color get purpleA200 => const Color(0XFFC05EFD);

  // White
  Color get whiteA700 => const Color(0XFFFFF9FF);
  Color get whiteA70001 => const Color(0XFFFFFFFF);
  Color get whiteA70008c => const Color(0X8CFEFEFE);

  // Yellow
  Color get yellow200 => const Color(0XFFFDE598);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
