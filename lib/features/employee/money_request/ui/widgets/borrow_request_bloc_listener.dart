import 'package:customer_request_task/core/theme/color_manager.dart';
import 'package:customer_request_task/features/employee/money_request/logic/borrow_requests_cubit.dart';
import 'package:customer_request_task/features/employee/money_request/logic/borrow_requests_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BorrowRequestBlocListener extends StatelessWidget {
  const BorrowRequestBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<BorrowRequestsCubit, BorrowRequestsState>(
      listenWhen:
          (previous, current) =>
              current is Loading || current is Success || current is Failure,
      listener: (context, state) {
        if (state is Loading) {
          showLoadingIndicator(context);
        } else {
          Navigator.of(
            context,
            rootNavigator: true,
          ).pop(); // Close loading dialog if open
          if (state is Success) {
            showSuccessMessage(context);
          } else if (state is Failure) {
            showErrorMessage(context, state.error);
          }
        }
      },
      child: const SizedBox.shrink(),
    );
  }

  void showLoadingIndicator(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder:
          (context) => Center(
            child: CircularProgressIndicator(color: ColorManager.primary),
          ),
    );
  }

  void showErrorMessage(BuildContext context, String error) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(error),
        backgroundColor: ColorManager.rad,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  void showSuccessMessage(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('تم ارسال طلب السلفة بنجاح '),
        backgroundColor: ColorManager.primary,
        duration: const Duration(seconds: 3),
      ),
    );
  }
}
