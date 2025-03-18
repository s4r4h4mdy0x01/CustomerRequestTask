import 'package:customer_request_task/core/helper/spacing.dart';
import 'package:customer_request_task/core/theme/styles_manager.dart';
import 'package:flutter/material.dart';

class DashboardLeaderDetails extends StatelessWidget {
  final String salesPerson;
  final String target;
  final String achieved;
  final String percentage;

  const DashboardLeaderDetails({
    super.key,
    required this.salesPerson,
    required this.target,
    required this.achieved,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'المندوب: $salesPerson',
          style: TextStylesManager.font18BlackSemiBold,
        ),
        verticalSpace(10),
        Text('التارجت: $target', style: TextStylesManager.font18BlackSemiBold),
        verticalSpace(10),
        Text(
          'المحقق من التارجت: $achieved',
          style: TextStylesManager.font18BlackSemiBold,
        ),
        verticalSpace(10),
        Text(
          'نسبة التحقيق: $percentage',
          style: TextStylesManager.font18BlackSemiBold,
        ),
        verticalSpace(10),
        Text(
          'الهدف البيعي للأصناف',
          style: TextStylesManager.font18BlackSemiBold,
        ),
        verticalSpace(10),
      ],
    );
  }
}
