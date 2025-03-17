import 'package:customer_request_task/core/widgets/app_text_form_field.dart';
import 'package:customer_request_task/features/auth/logic/login_cubit.dart';
import 'package:customer_request_task/features/auth/ui/widgets/password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsernamePasswordColumn extends StatefulWidget {
  const UsernamePasswordColumn({super.key});

  @override
  State<UsernamePasswordColumn> createState() => _UsernamePasswordColumnState();
}

class _UsernamePasswordColumnState extends State<UsernamePasswordColumn> {
  @override
  Widget build(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    return Form(
      key: loginCubit.formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'أسم المستخدم',
            controller: loginCubit.usernameController,
            validator: (value) => value!.isEmpty ? 'هذا الحقل مطلوب' : null,
            keyboardType: TextInputType.name,
            filled: true,
            fillColorBackground: Colors.white,
          ),
          PasswordField(
            hint: 'كلمة مرور',
            controller: loginCubit.passwordController,
          ),
        ],
      ),
    );
  }
}
