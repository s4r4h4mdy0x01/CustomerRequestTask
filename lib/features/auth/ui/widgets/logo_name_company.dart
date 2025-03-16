import 'package:flutter/material.dart';

class LogoAndNameCompany extends StatelessWidget {
  const LogoAndNameCompany({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        Image.asset('assets/images/LOGO 1@2x.png', height: 100),
        const SizedBox(height: 20),
        const Text(
          'National Quality',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}