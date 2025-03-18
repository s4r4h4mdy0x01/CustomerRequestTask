import 'package:customer_request_task/core/theme/color_manager.dart';
import 'package:flutter/material.dart';

class FacePrintScreen extends StatelessWidget {
  const FacePrintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.black,
      body: Stack(
        alignment: Alignment.center,
        children: [
          const Positioned(
            top: 50,
            child: Text(
              "بصمة الوجه",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
         
      ) ,
    );
  }
}