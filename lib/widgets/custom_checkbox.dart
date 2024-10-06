// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/theme/custom_text_style.dart';
import 'package:ucomm/theme/theme_helper.dart';

class CustomCheckboxButton extends StatelessWidget {
  CustomCheckboxButton(
      {super.key,
      this.decoration,
      this.alignment,
      this.isRightCheck,
      this.iconSize,
      required this.onChange,
      this.value,
      this.text,
      this.width,
      this.padding,
      this.textStyle,
      this.textAlignment,
      this.isExpandedText = false});

  final BoxDecoration? decoration;
  final Alignment? alignment;
  final bool? isRightCheck;
  final double? iconSize;
  bool? value;
  final Function(bool) onChange;
  final String? text;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final TextAlign? textAlignment;
  final bool isExpandedText;

  @override
  Widget build(BuildContext context) {
    return buildCheckboxWidget;
  }

  Widget get buildCheckboxWidget => GestureDetector(
        onTap: () {
          value = !(value!);
          onChange(value!);
        },
        child: Container(
          decoration: decoration,
          width: width,
          padding: padding,
          child: (isRightCheck ?? false) ? rightSideCheckbox : leftSideCheckbox,
        ),
      );
  Widget get leftSideCheckbox => Row(
        children: [
          checkboxWiget,
          SizedBox(
            width: text != null && text!.isNotEmpty ? 8 : 0,
          ),
          isExpandedText ? Expanded(child: textWidget) : textWidget
        ],
      );
  Widget get rightSideCheckbox => Row(
        children: [
          isExpandedText ? Expanded(child: textWidget) : textWidget,
          SizedBox(
            width: text != null && text!.isNotEmpty ? 8 : 0,
          ),
          checkboxWiget,
        ],
      );
  Widget get textWidget => Text(
        text ?? "",
        style: textStyle ?? CustomTextStyles.bodyLargeGilroyMedium,
      );
  Widget get checkboxWiget => SizedBox(
        height: iconSize ?? 24.h,
        width: iconSize ?? 24.h,
        child: Checkbox(
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          value: value ?? false,
          onChanged: (value) {
            onChange(value!);
          },
        ),
      );
}
