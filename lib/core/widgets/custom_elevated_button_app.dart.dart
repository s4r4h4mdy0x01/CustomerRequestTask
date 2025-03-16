
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButtonApp extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;

  const CustomElevatedButtonApp({super.key, required this.text, required this.onPressed , required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding:  EdgeInsets.symmetric(horizontal: 50.w, vertical: 10.h),
      ),
      child: Text(
        text,
        style:  TextStyle(fontSize: 22.sp, color: Colors.white),
      ),
    );
  }
}

