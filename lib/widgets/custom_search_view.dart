import 'package:flutter/material.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/theme/custom_text_style.dart';
import 'package:ucomm/theme/theme_helper.dart';

class CustomSearchView extends StatelessWidget {
  final Widget? suffixIcon;
  final TextInputType? inputType;
  final String? Function(String? input)? validator;
  final Function(String input)? onChanged;
  final int? maxLines;
  final FocusNode? focusNode;
  final TextAlign textAlign;
  final String? hintText;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final bool? filled;
  final Color? filledColor;
  final TextStyle? hintStyle;
  final double? width;
  final TextInputType? textInputType;
  final EdgeInsets? contentPadding;
  final BoxDecoration? boxDecoration;

  const CustomSearchView({
    Key? key,
    this.suffixIcon,
    this.inputType,
    this.onChanged,
    this.validator,
    this.maxLines = 1,
    this.focusNode,
    this.textAlign = TextAlign.start,
    this.textInputType = TextInputType.text,
    this.hintText,
    this.prefixIcon,
    this.controller,
    this.filled,
    this.filledColor,
    this.hintStyle,
    this.width,
    this.contentPadding,
    this.boxDecoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.maxFinite,
      decoration: boxDecoration,
      child: TextFormField(
        controller: controller,
        maxLines: maxLines,
        focusNode: focusNode,
        keyboardType: inputType,
        textAlign: textAlign,
        onTapOutside: (event) {
          if (focusNode != null) {
            focusNode?.unfocus();
          } else {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        style: CustomTextStyles.bodyLargeABeeZeeGray80001,
        decoration: InputDecoration(
          hintStyle: hintStyle ?? CustomTextStyles.titleSmallGilroy,
          fillColor: filledColor ?? appTheme.gray20001,
          contentPadding: contentPadding ?? EdgeInsets.all(11.h),
          errorMaxLines: 2,
          isDense: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          filled: filled ?? true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.h),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.h),
              borderSide: BorderSide.none),
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(14.h))
                  .copyWith(
                      borderSide: BorderSide(
            color: theme.colorScheme.primary,
            width: 1,
          )),
          prefixIcon: prefixIcon ??
              Icon(
                Icons.search,
                size: 16.h,
              ),
          // suffixIcon: suffixIcon ??
          //     IconButton(
          //       onPressed: () {},
          //       icon: Icon(
          //         Icons.clear,
          //         color: Colors.grey.shade600,
          //       ),
          //     ),
          hintText: hintText ?? "",
        ),
        onChanged: onChanged,
        validator: validator,
      ),
    );
  }
}
