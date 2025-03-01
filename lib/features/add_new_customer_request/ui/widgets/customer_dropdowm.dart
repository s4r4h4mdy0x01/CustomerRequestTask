
import 'package:customer_request_task/core/theme/color_manager.dart';
import 'package:flutter/material.dart';

class CustomDropdownField extends StatelessWidget {
  final int? value;
  final String label;
  final List<Map<String, dynamic>> items;
  final ValueChanged<int?> onChanged;

  const CustomDropdownField({
    super.key,
    required this.value,
    required this.label,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<int>(
      value: value,
      alignment: Alignment.centerRight,
      decoration: InputDecoration(
        fillColor: ColorManager.lightGrey,
        labelText: label,
        border: const OutlineInputBorder(),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.error, width: 1.3),
          borderRadius: BorderRadius.circular(16.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(color: ColorManager.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(color: ColorManager.primary),
        ),
      ),
      items: items.map((item) {
        return DropdownMenuItem<int>(
          value: item['id'],
          child: Text(item['name']),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}
