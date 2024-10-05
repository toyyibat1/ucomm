import 'package:flutter/material.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/theme/theme_helper.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style

  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
      backgroundColor: appTheme.gray100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.h),
      ),
      elevation: 0,
      padding: EdgeInsets.zero);
  static ButtonStyle get none => ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
      elevation: WidgetStateProperty.all<double>(0),
      padding: WidgetStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
      side: WidgetStateProperty.all<BorderSide>(
        BorderSide(color: Colors.transparent),
      ));
}
