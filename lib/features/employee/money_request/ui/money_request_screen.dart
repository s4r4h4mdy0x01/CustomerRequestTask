import 'package:customer_request_task/core/helper/spacing.dart';
import 'package:customer_request_task/core/theme/color_manager.dart';
import 'package:customer_request_task/core/theme/styles_manager.dart';
import 'package:customer_request_task/core/widgets/app_text_button.dart';
import 'package:customer_request_task/core/widgets/app_text_form_field.dart';
import 'package:customer_request_task/core/widgets/text_field_time.dart';
import 'package:customer_request_task/features/employee/money_request/ui/widgets/borrow_request_bloc_listener.dart';
import 'package:customer_request_task/features/employee/money_request/ui/widgets/colunm_borrow_request.dart';
import 'package:customer_request_task/features/leader/add_new_customer_request/ui/widgets/customer_dropdowm.dart';
import 'package:customer_request_task/features/employee/money_request/logic/borrow_requests_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoneyRequestScreen extends StatelessWidget {
  const MoneyRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('طلب سلفة'),
        backgroundColor: ColorManager.primary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                ColumnBorrowRequest(),
                Center(
                  child: AppTextButton(
                    buttonText: 'إرسال الطلب',
                    textStyle: TextStylesManager.font16WhiteRegular,
                    isLoading: false,
                    onPressed: () {
                      context.read<BorrowRequestsCubit>().emitborrowRequest();
                    },
                  ),
                ),
                BorrowRequestBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
