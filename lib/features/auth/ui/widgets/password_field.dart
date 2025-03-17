import 'package:customer_request_task/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController? controller;
  final String hint;
  const PasswordField({super.key, this.controller, required this.hint});

  @override
  State<PasswordField> createState() => _PasswordField1State();
}

class _PasswordField1State extends State<PasswordField> {
  bool isObscured = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: AppTextFormField(
        obscureText: isObscured,
        hintText: widget.hint,
        filled: true,
        fillColorBackground: Colors.white,
        suffixIcon: IconButton(
          icon: Icon(
            isObscured ? Icons.visibility_off : Icons.visibility,
            color: Colors.grey,
          ),
          onPressed: () {
            setState(() {
              isObscured = !isObscured;
            });
          },
        ),
        validator: (value) => value!.isEmpty ? 'هذا الحقل مطلوب' : null,
        controller: widget.controller,
        keyboardType: TextInputType.visiblePassword,
      ),
    );
  }
}
