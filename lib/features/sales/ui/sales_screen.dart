import 'package:flutter/material.dart';
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
    final SalesController controller = SalesController(userRole: userRole);

    return Scaffold(
      appBar: AppBar(
        title: const Text('المندوب: حسن حكيم '),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: controller.getButtons(context), // الحصول على الأزرار من الـ Controller
          ),
        ),
      ),
    );
  }
}



class SalesController {
  final String userRole;

  SalesController({required this.userRole});

  List<ButtonModel> _getButtonsData() {
    return [
      ButtonModel(name: "حضور وإنصراف", screen: const FacePrintScreen(), roles: ["موظف", "مندوب", "مشرف"]),
      // ButtonModel(name: "طلب إجازة", screen: RequestLeaveScreen(), roles: ["موظف", "مندوب", "مشرف"]),
      // ButtonModel(name: "طلب سلفة", screen: MoneyRequestScreen(), roles: ["موظف", "مندوب", "مشرف"]),
      // ButtonModel(name: "داش بورد المندوب", screen: DashboardScreenSales(), roles: ["مندوب"]),
      // ButtonModel(name: "جرد السيارة للمندوب", screen: InventoryScreen(), roles: ["مندوب"]),
      // ButtonModel(name: "طلب تحميل", screen: CreateInvoiceScreen(), roles: ["مندوب"]),
      // ButtonModel(name: "زيارة جديدة", screen: const NewVisitScreen(), roles: ["مندوب"]),
      // ButtonModel(name: "عرض الزيارات مندوب", screen: const VisitDetailsScreen(), roles: ["مندوب"]),
      // ButtonModel(name: "فاتورة جديدة", screen: CreateInvoiceScreen(), roles: ["مندوب", "مشرف"]),
      // ButtonModel(name: "عرض سعر", screen: QuotationSalesScreen(), roles: ["مندوب", "مشرف"]),
      // ButtonModel(name: "طلب شراء", screen: PurchaseOrderScreen(), roles: ["مندوب", "مشرف"]),
      // ButtonModel(name: "طلب إرجاع", screen: ReturnRequestScreen(), roles: ["مندوب", "مشرف"]),
      // ButtonModel(name: "مرتجع شراء", screen: InvoiceScreen(), roles: ["مشرف"]),
      // ButtonModel(name: "تارجت مندوبي المبيعات", screen: DashboardLeaderScreen(), roles: ["مشرف"]),
      // ButtonModel(name: "عرض الزيارات مشرف", screen: VisitDetailsLeaderScreen(), roles: ["مشرف"]),
      // ButtonModel(name: "فتح حساب عميل جديد", screen: NewAccountScreen(), roles: ["مشرف"]),
      // ButtonModel(name: "جرد السيارة مشرف", screen: InventoryLeaderScreen(), roles: ["مشرف"]),
    ];
  }

  List<Widget> getButtons(BuildContext context) {
    List<ButtonModel> buttonsData = _getButtonsData();
    List<Widget> buttons = [];

    for (var button in buttonsData) {
      if (button.roles.contains(userRole)) {
        buttons.add(
          _buildButton(context, button.name, button.screen),
        );
        buttons.add(const SizedBox(height: 20));
      }
    }

    return buttons;
  }

  Widget _buildButton(BuildContext context, String text, Widget screen) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        minimumSize: const Size(double.infinity, 50),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
class ButtonModel {
  final String name;
  final Widget screen;
  final List<String> roles;

  ButtonModel({
    required this.name,
    required this.screen,
    required this.roles,
  });
}
class FacePrintScreen extends StatelessWidget {
  const FacePrintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}