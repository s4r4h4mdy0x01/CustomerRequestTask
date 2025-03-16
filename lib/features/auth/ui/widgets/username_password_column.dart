import 'package:customer_request_task/features/auth/logic/login_cubit.dart';
import 'package:customer_request_task/features/auth/ui/screens/login_screen.dart';
import 'package:customer_request_task/features/auth/ui/widgets/custom_auth_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsernamePasswordColumn extends StatelessWidget {
  const UsernamePasswordColumn({super.key});

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    return Form(
      key: loginCubit.formKey,
      child: Column(
        children: [
          
          CustomAuthTextFormField(
            controller: loginCubit.usernameController,
            hint: 'اسم المستخدم',
          ),
          PasswordField(loginCubit: loginCubit),
        ],
      ),
    );
  }
}