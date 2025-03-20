import 'package:customer_request_task/core/helper/spacing.dart';
import 'package:customer_request_task/core/theme/color_manager.dart';
import 'package:customer_request_task/core/theme/styles_manager.dart';
import 'package:customer_request_task/core/widgets/app_text_button.dart';
import 'package:customer_request_task/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PurchaseReturnScreen extends StatelessWidget {
  const PurchaseReturnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('مرتجع شراء'),
        backgroundColor: ColorManager.primary,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Text('رقم الفاتورة '),
              AppTextFormField(
                hintText: 'ادخل رقم الفاتوره ',
                borderSide: BorderSide(),
                borderRadius: 16,
                keyboardType: TextInputType.text,
              ),
              verticalSpace(20),
              AppTextButton(
                buttonText: 'حفظ',
                textStyle: TextStylesManager.font16WhiteRegular,
                isLoading: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
