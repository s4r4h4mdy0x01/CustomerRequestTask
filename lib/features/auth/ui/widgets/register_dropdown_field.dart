import 'package:flutter/material.dart';
class RegisterDropdownField extends StatelessWidget {
  final String? selectedEmployeeStatus;
  final Function(String?) onChanged;

  const RegisterDropdownField({
    super.key,
    required this.selectedEmployeeStatus,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButtonFormField<String>(
        value: selectedEmployeeStatus,
        items: ['موظف', 'مندوب', 'مشرف']
            .map((status) => DropdownMenuItem<String>(
          value: status,
          child: Text(status, textAlign: TextAlign.right),
        ))
            .toList(),
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: 'حالة الموظف',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
