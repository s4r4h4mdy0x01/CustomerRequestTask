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

// class SalesController {
//   final String userRole;

//   SalesController({required this.userRole});

//   List<ButtonModel> _getButtonsData() {
//     return [
//       ButtonModel(
//         name: "حضور وإنصراف",
//         screen: const FacePrintScreen(),
//         roles: ["موظف", "مندوب", "مشرف"],
//       ),
//       ButtonModel(
//         name: "طلب إجازة",
//         screen: LeaveRequestScreen(),
//         roles: ["موظف", "مندوب", "مشرف"],
//       ),
//       ButtonModel(
//         name: "طلب سلفة",
//         screen: MoneyRequestScreen(),
//         roles: ["موظف", "مندوب", "مشرف"],
//       ),
//       ButtonModel(
//         name: "داش بورد المندوب",
//         screen: DashboardLeaderScreen(),
//         roles: ["مندوب"],
//       ),
//       // ButtonModel(name: "جرد السيارة للمندوب", screen: InventoryScreen(), roles: ["مندوب"]),
//       // ButtonModel(name: "طلب تحميل", screen: CreateInvoiceScreen(), roles: ["مندوب"]),
//       // ButtonModel(name: "زيارة جديدة", screen: const NewVisitScreen(), roles: ["مندوب"]),
//       // ButtonModel(name: "عرض الزيارات مندوب", screen: const VisitDetailsScreen(), roles: ["مندوب"]),
//       // ButtonModel(name: "فاتورة جديدة", screen: CreateInvoiceScreen(), roles: ["مندوب", "مشرف"]),
//       // ButtonModel(name: "عرض سعر", screen: QuotationSalesScreen(), roles: ["مندوب", "مشرف"]),
//       // ButtonModel(name: "طلب شراء", screen: PurchaseOrderScreen(), roles: ["مندوب", "مشرف"]),
//       // ButtonModel(name: "طلب إرجاع", screen: ReturnRequestScreen(), roles: ["مندوب", "مشرف"]),
//       // ButtonModel(name: "مرتجع شراء", screen: InvoiceScreen(), roles: ["مشرف"]),
//       // ButtonModel(name: "تارجت مندوبي المبيعات", screen: DashboardLeaderScreen(), roles: ["مشرف"]),
//       // ButtonModel(name: "عرض الزيارات مشرف", screen: VisitDetailsLeaderScreen(), roles: ["مشرف"]),
//       ButtonModel(
//         name: "فتح حساب عميل جديد",
//         screen: AddNewCustomerRequestScreen(),
//         roles: ["مشرف"],
//       ),
//       // ButtonModel(name: "جرد السيارة مشرف", screen: InventoryLeaderScreen(), roles: ["مشرف"]),
//     ];
//   }

//   List<Widget> getButtons(BuildContext context) {
//     List<ButtonModel> buttonsData = _getButtonsData();
//     List<Widget> buttons = [];

//     for (var button in buttonsData) {
//       if (button.roles.contains(userRole)) {
//         buttons.add(_buildButton(context, button.name, button.screen));
//         buttons.add(const SizedBox(height: 20));
//       }
//     }

//     return buttons;
//   }

//   Widget _buildButton(BuildContext context, String text, Widget screen) {
//     return ElevatedButton(
//       onPressed: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => screen),
//         );
//       },
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Colors.blue,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//         padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//         minimumSize: const Size(double.infinity, 50),
//       ),
//       child: Text(
//         text,
//         style: const TextStyle(fontSize: 18, color: Colors.white),
//       ),
//     );
//   }
// }

// class ButtonModel {
//   final String name;
//   final Widget screen;
//   final List<String> roles;

//   ButtonModel({required this.name, required this.screen, required this.roles});
// }

// class FacePrintScreen extends StatelessWidget {
//   const FacePrintScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
