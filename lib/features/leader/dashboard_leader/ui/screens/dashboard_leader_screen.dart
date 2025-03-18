import 'package:customer_request_task/core/theme/styles_manager.dart';
import 'package:customer_request_task/core/widgets/dashboard_leader_details.dart';
import 'package:customer_request_task/core/widgets/sales_target_of_items.dart';
import 'package:flutter/material.dart';

class DashboardLeaderScreen extends StatelessWidget {
  const DashboardLeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> items = [
      {'id': '1', 'name': 'سكر', 'target': 500, 'achieved': 400},
      {'id': '2', 'name': 'ملح', 'target': 500, 'achieved': 400},
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('داش بورد المندوب')),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DashboardLeaderDetails(
                salesPerson: 'حسن',
                target: '90000',
                achieved: '888',
                percentage: '20080',
              ),
              SalesTargetOfItems(items: items),
            ],
          ),
        ),
      ),
    );
  }
}
