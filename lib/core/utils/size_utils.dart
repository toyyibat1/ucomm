import 'package:flutter/material.dart';

const num DESIGN_WIDTH = 414;
const num DESIGN_HEIGHT = 896;
const num DESIGN_STATUS_BAR = 0;

extension ResponsiveExtension on num {
  double get _width => SizeUtils.width;
  double get h => ((this * _width) / DESIGN_WIDTH);
  double get fSize => ((this * _width) / DESIGN_WIDTH);
}

extension FormatExtension on double {
  double toDoubleValue({int fractionDigits = 2}) {
    return double.parse(toStringAsFixed(fractionDigits));
  }

  double isNonZero({num defaultValue = 0.0}) {
    return this > 0 ? this : defaultValue.toDouble();
  }
}

enum DeviceType { mobile, tablet, desktop }

typedef ResponsiveBuild = Widget Function(
    BuildContext context, Orientation orientation, DeviceType deviceType);

class Sizer extends StatelessWidget {
  const Sizer({Key? key, required this.builder}) : super(key: key);
  final ResponsiveBuild builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(builder: (context, orientation) {
          SizeUtils.setScreenSize(constraints, orientation);
          return builder(context, orientation, SizeUtils.deviceType);
        });
      },
    );
  }
}

class SizeUtils {
  // Initialize width and height with default values to avoid uninitialized access.
  static double width = DESIGN_WIDTH.toDouble();
  static double height = DESIGN_HEIGHT.toDouble();
  static late BoxConstraints boxConstraints;
  static late Orientation orientation;
  static late DeviceType deviceType;

  static void setScreenSize(
      BoxConstraints constraints, Orientation currentOrientation) {
    boxConstraints = constraints;
    orientation = currentOrientation;

    if (orientation == Orientation.portrait) {
      width = boxConstraints.maxWidth.isNonZero(defaultValue: DESIGN_WIDTH);
      height = boxConstraints.maxHeight.isNonZero(defaultValue: DESIGN_HEIGHT);
    } else {
      width = boxConstraints.maxHeight.isNonZero(defaultValue: DESIGN_WIDTH);
      height = boxConstraints.maxWidth.isNonZero(defaultValue: DESIGN_HEIGHT);
    }

    deviceType = DeviceType.mobile;
  }
}
