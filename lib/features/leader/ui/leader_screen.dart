import 'package:customer_request_task/core/helper/extensions.dart';
import 'package:customer_request_task/core/helper/spacing.dart';
import 'package:customer_request_task/core/router/routes_string.dart';
import 'package:customer_request_task/core/theme/color_manager.dart';
import 'package:customer_request_task/core/widgets/custom_elevated_button_app.dart.dart';
import 'package:customer_request_task/features/leader/ui/widgets/icon_notification_count.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LeaderScreen extends StatelessWidget {
  const LeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('المشرف : حسن '),
        backgroundColor: ColorManager.primary,
        actions: [IconNotificationCount()],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            children: [
              verticalSpace(60),
              CustomElevatedButtonApp(
                color: ColorManager.primary,
                onPressed: () {
                  context.pushNamed(RoutesString.dashboardLeaderScreen);
                },
                text: 'تارجت مندوبي المبيعات',
                size: Size(double.infinity, 50),
              ),
              verticalSpace(20),
              CustomElevatedButtonApp(
                color: ColorManager.primary,
                onPressed: () {
                  context.pushNamed(RoutesString.viewVisitLeaderScreen);
                },
                text: 'عرض الزيارات',
                size: Size(double.infinity, 50),
              ),
              verticalSpace(20),
              CustomElevatedButtonApp(
                color: ColorManager.primary,
                onPressed: () {
                  context.pushNamed(RoutesString.createInvoiceSceen);
                },
                text: 'فاتورة جديدة',
                size: Size(double.infinity, 50),
              ),
              // verticalSpace(20),
              // CustomElevatedButtonApp(
              //   color: ColorManager.primary,
              //   onPressed: () {},
              //   text: 'طلب شراء',
              //   size: Size(double.infinity, 50),
              // ),
              // verticalSpace(20),
              // CustomElevatedButtonApp(
              //   color: ColorManager.primary,
              //   onPressed: () {},
              //   text: 'طلب إرجاع',
              //   size: Size(double.infinity, 50),
              // ),
              verticalSpace(20),
              CustomElevatedButtonApp(
                color: ColorManager.primary,
                onPressed: () {},
                text: 'مرتجع شراء',
                size: Size(double.infinity, 50),
              ),
              verticalSpace(20),
              CustomElevatedButtonApp(
                color: ColorManager.primary,
                onPressed: () {
                  context.pushNamed(RoutesString.addNewCustomerRequest);
                },
                text: 'فتح حساب عميل جديد',
                size: Size(double.infinity, 50),
              ),
              verticalSpace(20),
              CustomElevatedButtonApp(
                color: ColorManager.primary,
                onPressed: () {},
                text: 'جرد السيارة',
                size: Size(double.infinity, 50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
