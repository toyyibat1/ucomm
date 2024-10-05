import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? labelText;
  final String? initialValue;
  final Widget? suffixIcon;
  final TextInputType? inputType;
  final String? Function(String? input)? validator;
  final Function(String input)? onChanged;
  final Function(String?)? onSaved;
  final Function()? onEditingComplete;
  final int? maxLines;
  final int? maxLength;
  final FocusNode? focusNode;
  final bool enableInteractiveSelection;
  final TextAlign textAlign;
  final String? hintText;
  final bool? obscureText;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final bool enabled;
  final Color? bgColor;
  final bool? filled;
  final Color? backgroundColor;
  final Color? filledColor;
  final bool? readOnly;
  final TextCapitalization? textCapitalization;
  final InputBorder? borderDecoration;
  final TextStyle? hintStyle;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final EdgeInsets? contentPadding;

  const CustomTextFormField({
    Key? key,
    this.labelText,
    this.initialValue,
    this.suffixIcon,
    this.inputType,
    this.onChanged,
    this.onEditingComplete,
    this.onSaved,
    this.validator,
    this.maxLines = 1,
    this.maxLength,
    this.focusNode,
    this.textAlign = TextAlign.start,
    this.obscureText = false,
    this.enableInteractiveSelection = true,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.hintText,
    this.prefixIcon,
    this.controller,
    this.enabled = true,
    this.bgColor,
    this.filled,
    this.backgroundColor,
    this.filledColor,
    this.readOnly,
    this.textCapitalization,
    this.borderDecoration,
    this.hintStyle,
    this.width,
    this.margin,
    this.contentPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        onSaved: onSaved,
        onEditingComplete: onEditingComplete,
        obscureText: obscureText!,
        enableInteractiveSelection: enableInteractiveSelection,
        maxLines: maxLines,
        maxLength: maxLength,
        focusNode: focusNode,
        initialValue: initialValue,
        keyboardType: inputType,
        textAlign: textAlign,
        enabled: enabled,
        onTapOutside: (event) {
          if (focusNode != null) {
            focusNode?.unfocus();
          } else {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        readOnly: readOnly ?? false,
        textCapitalization: textCapitalization ?? TextCapitalization.none,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.black26),
          fillColor: filledColor,
          contentPadding: contentPadding ?? EdgeInsets.all(11),
          errorMaxLines: 2,
          isDense: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          filled: filled ?? true,
          border: borderDecoration ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey, width: 1),
              ),
          enabledBorder: borderDecoration ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey, width: 1),
              ),
          focusedBorder: borderDecoration ??
              OutlineInputBorder(borderRadius: BorderRadius.circular(8))
                  .copyWith(borderSide: BorderSide()),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.red,
              width: 1,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.redAccent,
              width: 1,
            ),
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          labelText: labelText,
          hintText: hintText ?? "",
        ),
        onChanged: onChanged,
        validator: validator,
      ),
    );
  }
}

extension TextFormFieldStyleHelper on CustomTextFormField {
  static OutlineInputBorder get outlineGray => OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: Colors.blueGrey.withOpacity(0.52),
          width: 1,
        ),
      );
  static OutlineInputBorder get outlineBlueGray => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: Colors.blueGrey,
          width: 1,
        ),
      );
  static OutlineInputBorder get fillWhiteA =>
      OutlineInputBorder(borderSide: BorderSide.none);
  static OutlineInputBorder get outlineBlack => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: Colors.black,
          width: 1,
        ),
      );
  static OutlineInputBorder get fillGreen => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      );
}
