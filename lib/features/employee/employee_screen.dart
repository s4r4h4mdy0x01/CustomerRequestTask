import 'package:customer_request_task/core/helper/spacing.dart';
import 'package:customer_request_task/core/theme/color_manager.dart';
import 'package:customer_request_task/core/widgets/custom_elevated_button_app.dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmployeeScreen extends StatelessWidget {
  const EmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الموظف : حسن '),
        backgroundColor: ColorManager.primary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpace(60),
              CustomElevatedButtonApp(
                color: ColorManager.primary,
                onPressed: () {},
                text: 'حضور وإنصراف',
                size: Size(double.infinity, 50),
              ),
              verticalSpace(20),
              CustomElevatedButtonApp(
                color: ColorManager.primary,
                onPressed: () {},
                text: 'طلب إجازة ',
                size: Size(double.infinity, 50),
              ),
              verticalSpace(20),
              CustomElevatedButtonApp(
                color: ColorManager.primary,
                onPressed: () {},
                text: 'طلب سلفة ',
                size: Size(double.infinity, 50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
