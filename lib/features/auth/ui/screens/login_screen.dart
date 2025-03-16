import 'package:customer_request_task/features/auth/ui/widgets/login_bloc_consumer.dart';
import 'package:customer_request_task/features/auth/ui/widgets/logo_name_company.dart';
import 'package:customer_request_task/features/auth/ui/widgets/username_password_column.dart';
import 'package:flutter/material.dart';
import 'package:customer_request_task/features/auth/logic/login_cubit.dart';

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

class PasswordField extends StatefulWidget {
  final LoginCubit loginCubit;

  const PasswordField({super.key, required this.loginCubit});

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: widget.loginCubit.passwordController,
        obscureText: isObscured,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          hintText: 'كلمة المرور',
          hintTextDirection: TextDirection.rtl,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
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
        ),
        validator: (value) => value!.isEmpty ? 'هذا الحقل مطلوب' : null,
      ),
    );
  }
}
