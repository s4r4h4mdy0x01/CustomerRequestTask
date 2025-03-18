import 'package:customer_request_task/core/helper/spacing.dart';
import 'package:customer_request_task/core/theme/color_manager.dart';
import 'package:customer_request_task/core/theme/styles_manager.dart';
import 'package:flutter/material.dart';

class ViewVisitLeaderScreen extends StatelessWidget {
  const ViewVisitLeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('عرض الزيارة'),
        backgroundColor: ColorManager.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ColumnValuesViewVisit(),
            Row(
              //
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'عرض مسار الزيارة :',
                  style: TextStylesManager.font18BlackSemiBold,
                ),
                Icon(Icons.remove_red_eye, color: ColorManager.primary),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ColumnValuesViewVisit extends StatelessWidget {
  const ColumnValuesViewVisit({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        RowValuesViewVisit(value: 'حسن', text: 'مندوب:'),
        verticalSpace(10),
        RowValuesViewVisit(value: 'شركة ديار الغدير', text: 'العميل: '),
        verticalSpace(10),
        RowValuesViewVisit(value: '2025-01-21', text: 'تاريخ الزيارة :'),
        verticalSpace(10),
        RowValuesViewVisit(value: ' 1 ساعة', text: 'مدة الزيارة :'),
      ],
    );
  }
}

class RowValuesViewVisit extends StatelessWidget {
  final String text;
  final String value;
  const RowValuesViewVisit({
    super.key,
    required this.text,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          value,
          style: TextStylesManager.font16BlackRegular,
          textDirection: TextDirection.rtl,
        ),
        horizontalSpace(8),
        Text(
          text,
          style: TextStylesManager.font18BlackSemiBold,
          textDirection: TextDirection.rtl,
        ),
      ],
    );
  }
}
