import 'package:flutter/material.dart';

class CustomButtonLogin extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool isLoading;
  final String title;

  const CustomButtonLogin({
    super.key,
    required this.onPressed,
    required this.isLoading,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue[200],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      ),
      onPressed: onPressed,
      child:
          isLoading
              ? const CircularProgressIndicator(color: Colors.white)
              :  Text(
                title,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
    );
  }
}
