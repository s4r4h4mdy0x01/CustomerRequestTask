import 'package:customer_request_task/core/helper/spacing.dart';
import 'package:customer_request_task/core/theme/color_manager.dart' show ColorManager;
import 'package:customer_request_task/core/theme/styles_manager.dart';
import 'package:customer_request_task/core/widgets/app_text_form_field.dart';
import 'package:customer_request_task/features/add_new_customer_request/logic/customer_request_cubit.dart';
import 'package:customer_request_task/features/add_new_customer_request/ui/widgets/customer_dropdowm.dart';
import 'package:customer_request_task/features/add_new_customer_request/ui/widgets/customer_request_text_form_field_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColumnCustomerRequest extends StatelessWidget {
  const ColumnCustomerRequest({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, dynamic>> countries = [
      {'name': 'السعودية', 'id': 1},
      {'name': 'مصر', 'id': 2},
      {'name': 'الإمارات', 'id': 3},
      {'name': 'الكويت', 'id': 4},
    ];
     final List<Map<String, dynamic>> city = [
      {'name':'الرياض', 'id': 1},
      {'name':"جده", 'id':2}, 
    ];
   return Directionality(
     textDirection: TextDirection.rtl,
     child: Form(
      key: context.read<CustomerRequestCubit>().formKey,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomerRequestTextFormFieldAndText(appTextFormField: AppTextFormField(hintText: 'الاسم',
           keyboardType: TextInputType.name
           ,controller: context.read<CustomerRequestCubit>().nameController, textDirection:  TextDirection.rtl , ),
            text: 'الاسم',),
            verticalSpace(10),
          CustomerRequestTextFormFieldAndText(appTextFormField: AppTextFormField(hintText: 'رقم الهاتف ', textDirection:  TextDirection.rtl 
           ,keyboardType: TextInputType.phone 
           ,controller: context.read<CustomerRequestCubit>().phoneNumberController , ),
            text: 'رقم الهاتف',),
              verticalSpace(10),
          CustomerRequestTextFormFieldAndText(appTextFormField: AppTextFormField(hintText: 'اسم الشارع ', textDirection:  TextDirection.rtl ,
           keyboardType: TextInputType.name 
           ,controller: context.read<CustomerRequestCubit>().streetNameController , ),
            text: 'اسم الشارع ',),
                verticalSpace(10),
          CustomerRequestTextFormFieldAndText(appTextFormField: AppTextFormField(hintText: 'الرمز البريدى ',
           keyboardType: TextInputType.name
           ,controller: context.read<CustomerRequestCubit>().zipCodeController, textDirection:   TextDirection.rtl  , ),
            text: 'الركز البريدى ',),
             verticalSpace(15),
          CustomDropdownField(
          value: context.read<CustomerRequestCubit>().countryId,
          label: 'اختر الدولة',
          items: countries,
          onChanged: (value) {
            if (value != null) {
              context.read<CustomerRequestCubit>().setCountryId(value);
            }
          },
        ),
        verticalSpace(15),
            CustomDropdownField(
          value: context.read<CustomerRequestCubit>().cityId,
          label: 'اختر المدينة',
          items: city,
          onChanged: (value) {
            if (value != null) {
              context.read<CustomerRequestCubit>().setCityId(value);
            }
          },
        ),
              
        ],
      )),
   );
  }
}



