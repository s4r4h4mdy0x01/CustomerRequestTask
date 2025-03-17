import 'package:customer_request_task/core/theme/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback? onPressed;
  final bool isLoading;
  const AppTextButton({
    super.key,
    this.borderRadius,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonHeight,
    this.buttonWidth,
    required this.buttonText,
    required this.textStyle,
    this.onPressed,
    required this.isLoading ,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 20.0),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(
          backgroundColor ?? ColorManager.primary,
        ),
        padding: WidgetStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 40.w,
            vertical: verticalPadding?.h ?? 10.h,
          ),
        ),
        fixedSize: WidgetStateProperty.all(
          Size(buttonWidth?.w ?? 180.h, buttonHeight ?? 60.h),
        ),
      ),
      onPressed: onPressed,
      child:
          isLoading
              ? const CircularProgressIndicator(color: Colors.white)
              : Text(buttonText, style: textStyle),
    );
  }
}
