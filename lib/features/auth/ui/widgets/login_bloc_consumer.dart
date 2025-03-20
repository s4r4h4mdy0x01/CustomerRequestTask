import 'package:customer_request_task/core/theme/styles_manager.dart';
import 'package:customer_request_task/core/widgets/app_text_button.dart';
import 'package:customer_request_task/features/auth/logic/login_cubit.dart';
import 'package:customer_request_task/features/auth/logic/login_state.dart';
import 'package:customer_request_task/features/sales/ui/sales_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocConsumer extends StatelessWidget {
  const LoginBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is Success) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('تم الدخول بنجاح كـ مشرف '),
              backgroundColor: Colors.green,
            ),
          );
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => SalesScreen()),
          );
        } else if (state is Error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error), backgroundColor: Colors.red),
          );
        }
      },
      builder: (context, state) {
        return AppTextButton(
          buttonText: 'دخول',
          textStyle: TextStylesManager.font16WhiteRegular,
          onPressed: state is Loading ? null : loginCubit.emitLoginStates,
          isLoading: state is Loading,
        );
      },
    );
  }
}
