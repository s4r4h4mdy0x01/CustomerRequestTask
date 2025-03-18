import 'package:customer_request_task/core/theme/color_manager.dart';
import 'package:flutter/material.dart';

class CustomDropdownField<T> extends StatelessWidget {
  final T? value;
  final String label;
  final List<Map<String, dynamic>> items;
  final ValueChanged<T?> onChanged;

  const CustomDropdownField({
    super.key,
    required this.value,
    required this.label,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
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
        return DropdownMenuItem<T>(
          value: item['id'] as T, 
          child: Text(item['name'].toString()),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}


class CustomDropdownField2<T, M> extends StatelessWidget {
  final T? value;
  final String label;
  final List<M> items;
  final ValueChanged<T?> onChanged;
  final T Function(M) mapToT; // تحويل M إلى T

  const CustomDropdownField2({
    super.key,
    required this.value,
    required this.label,
    required this.items,
    required this.onChanged,
    required this.mapToT, // دالة تحويل القيم
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      value: items.map(mapToT).contains(value) ? value : null, // التأكد من وجود القيمة
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
        T mappedItem = mapToT(item);
        return DropdownMenuItem<T>(
          value: mappedItem,
          child: Text(mappedItem.toString()),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}
