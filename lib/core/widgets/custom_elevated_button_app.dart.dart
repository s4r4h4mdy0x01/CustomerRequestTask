import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButtonApp extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Size? size;

  const CustomElevatedButtonApp({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: size,
        backgroundColor: color,
        padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 10.h),
      ),
      child: Text(text, style: TextStyle(fontSize: 22.sp, color: Colors.white)),
    );
  }
}
