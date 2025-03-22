import 'package:customer_request_task/core/theme/color_manager.dart';
import 'package:customer_request_task/core/theme/styles_manager.dart';
import 'package:customer_request_task/core/widgets/app_text_button.dart';
import 'package:customer_request_task/features/employee/leave_request/logic/vacation_requests_cubit.dart';
import 'package:customer_request_task/features/employee/leave_request/ui/widgets/column_vaction_request.dart';
import 'package:customer_request_task/features/employee/leave_request/ui/widgets/vacation_request_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VacationRequestScreen extends StatelessWidget {
  const VacationRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('طلب اجازة'),
        backgroundColor: ColorManager.primary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),

          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                ColumnVactionRequest(),
                Center(
                  child: AppTextButton(
                    buttonText: 'إرسال الطلب',
                    textStyle: TextStylesManager.font16WhiteRegular,
                    isLoading: false,
                    onPressed: () {
                      context
                          .read<VacationRequestsCubit>()
                          .emitVacationRequest();
                    },
                  ),
                ),
                VacationRequestBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
