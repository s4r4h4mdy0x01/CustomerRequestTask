import 'package:customer_request_task/core/theme/color_manager.dart';
import 'package:customer_request_task/features/add_new_customer_request/logic/customer_request_cubit.dart';
import 'package:customer_request_task/features/add_new_customer_request/logic/customer_request_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomerRequestBlocListener extends StatelessWidget {
  const CustomerRequestBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CustomerRequestCubit, CustomerRequestState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Failure,
      listener: (context, state) {
        if (state is Loading) {
          showLoadingIndicator(context);
        } else {
          Navigator.of(context, rootNavigator: true).pop(); // Close loading dialog if open
          if (state is Success) {
            showSuccessMessage(context, "Request added successfully!");
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
      builder: (context) => Center(
        child: CircularProgressIndicator(
          color: ColorManager.primary,
        ),
      ),
    );
  }

  void showSuccessMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  void showErrorMessage(BuildContext context, String error) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(error),
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 3),
      ),
    );
  }
}
