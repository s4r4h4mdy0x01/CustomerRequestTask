import 'package:customer_request_task/features/auth/logic/login_cubit.dart';
import 'package:customer_request_task/features/auth/logic/login_state.dart';
import 'package:customer_request_task/features/auth/ui/widgets/custom_button_login.dart';
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
              content: Text('تم الدخول بنجاح كـ ${state.userRole}'),
              backgroundColor: Colors.green,
            ),
          );
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder:
                  (context) => SalesScreen(
                    userRole: state.userRole,
                    accessToken: state.accessToken,
                  ),
            ),
          );
        } else if (state is Error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error), backgroundColor: Colors.red),
          );
        }
      },
      builder: (context, state) {
        return CustomButtonLogin(
          title: 'دخول',
          onPressed: state is Loading ? null : loginCubit.emitLoginStates,
          isLoading: state is Loading,
        );
      },
    );
  }
}
