import 'package:customer_request_task/core/helper/spacing.dart';
import 'package:customer_request_task/core/theme/color_manager.dart';
import 'package:customer_request_task/core/theme/styles_manager.dart';
import 'package:customer_request_task/core/widgets/app_text_button.dart';
import 'package:customer_request_task/core/widgets/app_text_form_field.dart';
import 'package:customer_request_task/core/widgets/text_field_time.dart';
import 'package:customer_request_task/features/leader/add_new_customer_request/ui/widgets/customer_dropdowm.dart';
import 'package:customer_request_task/features/employee/money_request/logic/borrow_requests_cubit.dart';
import 'package:customer_request_task/features/employee/money_request/logic/borrow_requests_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LeaveRequestScreen extends StatelessWidget {
  const LeaveRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> values = [
      {'name': 'حسن حكيم', 'id': 1},
      {'name': 'أحمد سالم', 'id': 2},
      {'name': 'ولاء مجدي', 'id': 3},
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('طلب اجازة'),
        backgroundColor: ColorManager.primary,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),

        // Here I used the same cubit to request the Money but I will change it this is just to try
        child:Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  // const Text('تاريخ الطلب:', style: TextStyle(fontSize: 18)),
                  // TextfieldTime(
                  //   hintText: 'اختر التاريخ',
                  //   controller: cubit.requestDateController,
                  //   onTap: () {
                  //     cubit.selectRequestDate(context);
                  //   },
                  // ),
                  verticalSpace(20),
                  const Text('المدير المباشر', style: TextStyle(fontSize: 18)),
                  verticalSpace(10),
                  CustomDropdownField(
                    label: 'اختار المدير', 
                    items: values,
                    value: 2,
                    onChanged: (value) {},
                  ),
                  verticalSpace(20),
                  const Text('السبب:', style: TextStyle(fontSize: 18)),
                  verticalSpace(10),
                  AppTextFormField(
                    hintText: 'اكتب السبب هنا...',
                    maxLines: 3,
                    borderRadius: 4.0,
                    keyboardType: TextInputType.name,
                    filled: true,
                    borderSide: BorderSide(
                      color: ColorManager.black,
                      width: 1.3,
                    ),
                  ),
                  verticalSpace(20),
                  Center(
                    child: AppTextButton(
                      buttonText: 'إرسال الطلب',
                      textStyle: TextStylesManager.font16WhiteRegular,
                      isLoading: false,
                    ),
                  ),
                ],
              ),
        )
      ),
    );
  }
}
