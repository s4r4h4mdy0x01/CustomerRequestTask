import 'package:customer_request_task/core/widgets/app_text_form_field.dart';
import 'package:customer_request_task/features/add_new_customer_request/logic/customer_request_cubit.dart';
import 'package:customer_request_task/features/add_new_customer_request/ui/widgets/customer_request_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColumnCustomerRequest extends StatelessWidget {
  const ColumnCustomerRequest({super.key});

  @override
  Widget build(BuildContext context) {
   return Form(
    key: context.read<CustomerRequestCubit>().formKey,
    child: Column(
      children: [
        CustomerRequestValue(appTextFormField: AppTextFormField(hintText: 'Name',
         keyboardType: TextInputType.name
         ,controller: context.read<CustomerRequestCubit>().nameController , ),
          text: 'Name',),
           CustomerRequestValue(appTextFormField: AppTextFormField(hintText: 'Phone Number',
         keyboardType: TextInputType.name
         ,controller: context.read<CustomerRequestCubit>().phoneNumberController , ),
          text: 'Phone Number',),
      ],
    ));
  }
}