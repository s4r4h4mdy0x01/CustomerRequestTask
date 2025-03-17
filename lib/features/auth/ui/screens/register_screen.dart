import 'package:customer_request_task/core/helper/spacing.dart';
import 'package:customer_request_task/core/theme/styles_manager.dart';
import 'package:customer_request_task/core/widgets/app_text_button.dart';
import 'package:customer_request_task/core/widgets/app_text_form_field.dart';
import 'package:customer_request_task/features/auth/logic/register_cubit.dart';
import 'package:customer_request_task/features/auth/logic/register_state.dart';
import 'package:customer_request_task/features/auth/ui/widgets/logo_name_company.dart';
import 'package:customer_request_task/features/auth/ui/widgets/password_field.dart';
import 'package:customer_request_task/features/auth/ui/widgets/register_dropdown_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
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
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        final cubit = context.read<RegisterCubit>();
        return Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: AppTextFormField(
                    controller: cubit.firstNameController,
                    hintText: 'الاسم الأول',
                    filled: true,
                    fillColorBackground: Colors.white,
                    keyboardType: TextInputType.name,
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
            verticalSpace(10),
            AppTextFormField(
              controller: cubit.lastNameController,
              hintText: 'اسم العائلة',
              filled: true,
              fillColorBackground: Colors.white,
              keyboardType: TextInputType.name,
            ),
            verticalSpace(10),
            AppTextFormField(
              controller: cubit.emailPhoneController,
              hintText: 'الهاتف أو البريد الإلكتروني',
              filled: true,
              fillColorBackground: Colors.white,
              keyboardType: TextInputType.emailAddress,
            ),
            verticalSpace(10),
            PasswordField(
              controller: cubit.passwordController,
              hint: 'كلمة المرور',
            ),
            PasswordField(
              controller: cubit.confirmPasswordController,
              hint: 'تأكيد كلمة المرور',
            ),

            verticalSpace(20),

            AppTextButton(
              isLoading: false,
              buttonText: 'التالى',
              textStyle: TextStylesManager.font16WhiteRegular,
              onPressed:
                  state.isRegisterButtonEnabled
                      ? () => cubit.navigateBasedOnEmployeeStatus(context)
                      : null,
            ),
          ],
        );
      },
    );
  }
}
