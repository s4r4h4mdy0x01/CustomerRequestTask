import 'package:customer_request_task/core/helper/spacing.dart';
import 'package:customer_request_task/core/widgets/app_text_form_field.dart';
import 'package:customer_request_task/features/add_new_customer_request/logic/customer_request_cubit.dart';
import 'package:customer_request_task/features/add_new_customer_request/ui/widgets/customer_request_text_form_field_and_text.dart';
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
        CustomerRequestTextFormFieldAndText(appTextFormField: AppTextFormField(hintText: 'Name',
         keyboardType: TextInputType.name
         ,controller: context.read<CustomerRequestCubit>().nameController , ),
          text: 'Name',),
          verticalSpace(10),
        CustomerRequestTextFormFieldAndText(appTextFormField: AppTextFormField(hintText: 'Phone Number',
         keyboardType: TextInputType.phone
         ,controller: context.read<CustomerRequestCubit>().phoneNumberController , ),
          text: 'Phone Number',),
            verticalSpace(10),
        CustomerRequestTextFormFieldAndText(appTextFormField: AppTextFormField(hintText: 'Street Name',
         keyboardType: TextInputType.name
         ,controller: context.read<CustomerRequestCubit>().streetNameController , ),
          text: 'Street Name',),
              verticalSpace(10),
        CustomerRequestTextFormFieldAndText(appTextFormField: AppTextFormField(hintText: 'Zip Code',
         keyboardType: TextInputType.name
         ,controller: context.read<CustomerRequestCubit>().zipCodeController , ),
          text: 'Zip Code',),
          DropdownButton<int>(
            value: context.read<CustomerRequestCubit>().countryId,
            items: const [
              DropdownMenuItem(value: 1, child: Text('Saudi Arabia')),
            ],
            onChanged: (value) {
              if (value != null) {
              context.read<CustomerRequestCubit>().setCountryId(value);
              }
            },
          ),
            
      ],
    ));
  }
}