import 'package:customer_request_task/core/helper/spacing.dart';
import 'package:customer_request_task/core/theme/styles_manager.dart';
import 'package:customer_request_task/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class CustomerRequestTextFormFieldAndText extends StatelessWidget {
  final String text;

  final AppTextFormField appTextFormField;

  const CustomerRequestTextFormFieldAndText({
    super.key,
    required this.text,

    required this.appTextFormField,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: TextStylesManager.font16BlackMedium),
        verticalSpace(5),
        appTextFormField,
      ],
    );
  }
}
