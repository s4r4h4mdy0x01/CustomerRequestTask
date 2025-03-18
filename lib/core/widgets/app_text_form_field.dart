import 'package:customer_request_task/core/theme/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.textDirection,
    this.suffixIcon,
    this.fillColorBackground,
    this.hintStyle,
    this.obscureText,
    this.controller,
    this.keyboardType,
    required this.hintText,
    this.focusedBorder,
    this.enabledBorder,
    this.validator,
    this.filled, this.borderRadius, this.maxLines, this.borderSide,
  });
  final EdgeInsetsGeometry? contentPadding;
  final Color? fillColorBackground;
  final Widget? suffixIcon;
  final String hintText;
  final TextStyle? hintStyle;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final bool? obscureText;
  final bool? filled;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final Function(String?)? validator;
  final TextDirection? textDirection;
  final double? borderRadius;
  final int? maxLines;
  final BorderSide? borderSide;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
     maxLines: maxLines??1 ,
      textAlign: TextAlign.right,
      textDirection: textDirection,
      controller: controller,
      validator: (value) {
        return validator!(value);
      },

      obscureText: obscureText ?? false,
      keyboardType: keyboardType ?? TextInputType.none,
      decoration: InputDecoration(
          isDense: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(vertical: 18.h, horizontal: 18.w),
        filled: filled ?? false,
        fillColor: fillColorBackground,

        // focusedErrorBorder: OutlineInputBorder(
        //   borderSide: BorderSide(color: ColorManager.error, width: 1.3),
        //   borderRadius: BorderRadius.circular(16.0),
        // ),
        // enabledBorder:
        //     enabledBorder ??
        //     OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(16.0),
        //       borderSide: BorderSide(color: ColorManager.grey),
        //     ),
        // focusedBorder:
        //     focusedBorder ??
        //     OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(16.0),
        //       borderSide: BorderSide(color: ColorManager.primary),
        //     ),
        // errorBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(16.0),
        //   borderSide: BorderSide(color: ColorManager.error, width: 1.3),
        // ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius??30),
          borderSide: borderSide?? BorderSide.none,
        ),
        hintText: hintText,
        hintStyle: TextStylesManager.font15BlackMedium,
        hintTextDirection: TextDirection.rtl,
        suffixIcon: suffixIcon,
      ),

      style: TextStylesManager.font16BlackRegular,
    );
  }
}
