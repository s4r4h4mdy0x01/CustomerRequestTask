import 'package:flutter/material.dart';

class TextfieldTime extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final void Function()? onTap;
  const TextfieldTime({
    super.key,
    required this.controller,
    required this.hintText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: Icon(Icons.calendar_today),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(),
        ),
      ),

      readOnly: true,
      onTap: onTap,
    );
  }
}
