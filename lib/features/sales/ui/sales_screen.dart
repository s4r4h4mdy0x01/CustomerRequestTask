import 'package:customer_request_task/core/helper/extensions.dart';
import 'package:customer_request_task/core/helper/spacing.dart';
import 'package:customer_request_task/core/router/routes_string.dart';
import 'package:customer_request_task/core/theme/color_manager.dart';
import 'package:customer_request_task/core/widgets/custom_elevated_button_app.dart.dart';
import 'package:customer_request_task/features/employee/leave_request/ui/leave_request_screen.dart';
import 'package:customer_request_task/features/employee/money_request/ui/money_request_screen.dart';
import 'package:customer_request_task/features/leader/add_new_customer_request/ui/screen/add_new_customer_request_screen.dart';
import 'package:customer_request_task/features/leader/dashboard_leader/ui/screens/dashboard_leader_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// استيراد الـ Controller

class SalesScreen extends StatelessWidget {
  final String userRole;
  final String accessToken;

  const SalesScreen({
    super.key,
    required this.userRole,
    required this.accessToken,
  });

  @override
  Widget build(BuildContext context) {
    // final SalesController controller = SalesController(userRole: userRole);

    return Scaffold(
      appBar: AppBar(
        title: const Text('المشرف: حسن حكيم '),
        backgroundColor: ColorManager.primary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            children: [
              CustomElevatedButtonApp(
                color: ColorManager.primary,
                onPressed: () {
                  context.pushNamed(RoutesString.leaveRequestScreen);
                },
                text: 'طلب إجازة ',
                size: Size(double.infinity, 50),
              ),
              verticalSpace(20),
              CustomElevatedButtonApp(
                color: ColorManager.primary,
                onPressed: () {
                  context.pushNamed(RoutesString.moneyRequestScreen);
                },
                text: 'طلب سلفة ',
                size: Size(double.infinity, 50),
              ),
              verticalSpace(20),
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

