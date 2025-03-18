import 'package:flutter/material.dart';

class SalesTargetOfItems extends StatelessWidget {
  final List<Map<String, dynamic>> items;
  const SalesTargetOfItems({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: const [
          DataColumn(label: Text('المسلسل')),
          DataColumn(label: Text('الصنف')),
          DataColumn(label: Text('الهدف')),
          DataColumn(label: Text('المحقق')),
        ],
        rows:
            (items).map((item) {
              return DataRow(
                cells: [
                  DataCell(Text(item['id'])),
                  DataCell(Text(item['name'])),
                  DataCell(Text(item['target'].toString())),
                  DataCell(Text(item['achieved'].toString())),
                ],
              );
            }).toList(),
      ),
    );
  }
}
