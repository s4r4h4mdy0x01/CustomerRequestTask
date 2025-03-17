import 'package:customer_request_task/core/widgets/app_text_button.dart';
import 'package:customer_request_task/features/auth/ui/widgets/login_bloc_consumer.dart';
import 'package:customer_request_task/features/auth/ui/widgets/logo_name_company.dart';
import 'package:customer_request_task/features/auth/ui/widgets/username_password_column.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LogoAndNameCompany(),
              const SizedBox(height: 20),
              const UsernamePasswordColumn(),
              const SizedBox(height: 20),
              const LoginBlocConsumer(),
            ],
          ),
        ),
      ),
    );
  }
}
