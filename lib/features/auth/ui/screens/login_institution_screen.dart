import 'package:customer_request_task/features/auth/logic/login_institution_cubit.dart';
import 'package:customer_request_task/features/auth/logic/login_institution_state.dart';
import 'package:customer_request_task/features/auth/ui/widgets/custom_auth_text_form_field.dart';
import 'package:customer_request_task/features/auth/ui/widgets/custom_button_login.dart';
import 'package:customer_request_task/features/auth/ui/widgets/logo_name_company.dart';
import 'package:customer_request_task/features/auth/ui/widgets/register_dropdown_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginInstitutionScreen extends StatelessWidget {
  const LoginInstitutionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginInstitutionCubit(),
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LogoAndNameCompany(),
                const SizedBox(height: 20),
                RegisterForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginInstitutionCubit, LoginInstitutionState>(
      builder: (context, state) {
        final cubit = context.read<LoginInstitutionCubit>();
        return Column(
          children: [
            CustomAuthTextFormField(
              controller: cubit.firstNameController,
              hint: 'الاسم الأول',
            ),
            Row(
              children: [
                Expanded(
                  child: CustomAuthTextFormField(
                    controller: cubit.firstNameController,
                    hint: 'الاسم الأول',
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: RegisterDropdownField(
                    selectedEmployeeStatus: state.selectedEmployeeStatus,
                    onChanged: (value) => cubit.setEmployeeStatus(value!),
                  ),
                ),
              ],
            ),
            CustomAuthTextFormField(
              controller: cubit.lastNameController,
              hint: 'اسم العائلة',
            ),
            CustomAuthTextFormField(
              controller: cubit.emailPhoneController,
              hint: 'الهاتف أو البريد الإلكتروني',
            ),
            CustomAuthTextFormField(
              controller: cubit.passwordController,
              hint: 'كلمة المرور',
            ),
            CustomAuthTextFormField(
              controller: cubit.confirmPasswordController,
              hint: 'تأكيد كلمة المرور',
            ),

            const SizedBox(height: 20),
            CustomButtonLogin(
              onPressed:
                  state.isRegisterButtonEnabled
                      ? () => cubit.navigateBasedOnEmployeeStatus(context)
                      : null,
              isLoading: false,
              title: 'التالى',
            ),
          ],
        );
      },
    );
  }
}
