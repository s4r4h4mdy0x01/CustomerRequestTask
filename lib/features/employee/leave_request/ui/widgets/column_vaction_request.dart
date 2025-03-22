import 'package:customer_request_task/core/helper/spacing.dart';
import 'package:customer_request_task/core/theme/color_manager.dart';
import 'package:customer_request_task/core/widgets/app_text_form_field.dart';
import 'package:customer_request_task/core/widgets/text_field_time.dart';
import 'package:customer_request_task/features/employee/leave_request/logic/vacation_requests_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColumnVactionRequest extends StatelessWidget {
  const ColumnVactionRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<VacationRequestsCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const Text('من تاريخ', style: TextStyle(fontSize: 18)),
          TextfieldTime(
            hintText: 'اختر التاريخ',
            controller:
                context.read<VacationRequestsCubit>().dateFromController,
            onTap: () {
              context.read<VacationRequestsCubit>().selectDateFrom(context);
            },
          ),
          verticalSpace(20),
          const Text('الى تاريخ', style: TextStyle(fontSize: 18)),
          TextfieldTime(
            hintText: 'اختر التاريخ',
            controller: context.read<VacationRequestsCubit>().dateToController,
            onTap: () {
              context.read<VacationRequestsCubit>().selectDateTo(context);
            },
          ),

          verticalSpace(20),
          const Text('السبب:', style: TextStyle(fontSize: 18)),
          verticalSpace(10),
          AppTextFormField(
            controller: context.read<VacationRequestsCubit>().reasonController,
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
