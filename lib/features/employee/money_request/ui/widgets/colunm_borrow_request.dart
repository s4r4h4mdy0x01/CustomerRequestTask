import 'package:customer_request_task/core/helper/spacing.dart';
import 'package:customer_request_task/core/theme/color_manager.dart';
import 'package:customer_request_task/core/theme/styles_manager.dart';
import 'package:customer_request_task/core/widgets/app_text_button.dart';
import 'package:customer_request_task/core/widgets/app_text_form_field.dart';
import 'package:customer_request_task/core/widgets/text_field_time.dart';
import 'package:customer_request_task/features/employee/money_request/logic/borrow_requests_cubit.dart';
import 'package:customer_request_task/features/leader/add_new_customer_request/ui/widgets/customer_dropdowm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColumnBorrowRequest extends StatelessWidget {
  const ColumnBorrowRequest({super.key});

  @override
  Widget build(BuildContext context) {
    final List<double> value = [100.0, 200.0, 300.0, 400.0, 500.0];
    return Form(
      key: context.read<BorrowRequestsCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const Text('تاريخ الطلب:', style: TextStyle(fontSize: 18)),
          TextfieldTime(
            hintText: 'اختر التاريخ',
            controller:
                context.read<BorrowRequestsCubit>().borrowRequestDateController,
            onTap: () {
              context.read<BorrowRequestsCubit>().selectRequestDate(context);
            },
          ),
          verticalSpace(20),
          const Text('قيمة السلفة:', style: TextStyle(fontSize: 18)),
          verticalSpace(10),

          CustomDropdownField2(
            value: context.read<BorrowRequestsCubit>().borrowValue,
            label: 'اختار قيمة السلفة',
            items: value,
            onChanged: (value) {
              if (value != null) {
                context.read<BorrowRequestsCubit>().setBorrowValue(value);
              }
            },
            mapToT: (item) => item,
          ),

          verticalSpace(20),
          const Text('السبب:', style: TextStyle(fontSize: 18)),
          verticalSpace(10),
          AppTextFormField(
            controller: context.read<BorrowRequestsCubit>().reasonController,
            hintText: 'اكتب السبب هنا...',
            maxLines: 3,
            borderRadius: 4.0,
            keyboardType: TextInputType.text,
            filled: true,
            borderSide: BorderSide(color: ColorManager.black, width: 1.3),
          ),
          verticalSpace(20),
        ],
      ),
    );
  }
}
