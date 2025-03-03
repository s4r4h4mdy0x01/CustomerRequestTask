import 'package:customer_request_task/features/add_new_customer_request/data/models/customer_request_response_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class ViewDetailsCustomerRequest extends StatelessWidget {
  final CustomerRequestResponseBody response;
  const ViewDetailsCustomerRequest({super.key, required this.response});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'تفاصيل العميل:',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('الاسم: ${response.data.name}'),
            Text('رقم الهاتف: ${response.data.phoneNumber}'),
            Text('الرقم الضريبي: ${response.data.taxNumber}'),
            Text('الحد الائتماني: ${response.data.creditLimit}'),
            Text('رقم المبنى: ${response.data.buildingNumber}'),
            Text('اسم الشارع: ${response.data.streetName}'),
            Text('الرقم الفرعي: ${response.data.subNumber}'),
            Text('الرمز البريدي: ${response.data.zipCode}'),
            Text('المدينة (EN): ${response.data.cityEnName}'),
            Text('المدينة (AR): ${response.data.cityArName}'),
            Text('الدولة (EN): ${response.data.countryEnName}'),
            Text('الدولة (AR): ${response.data.countryArName}'),
            const Divider(),
            const Text(
              'الملفات:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            if (response.data.files.isEmpty) const Text('لا توجد ملفات'),
            ...response.data.files.map((file) {
              final extension = file.split('.').last.toLowerCase();
              final isImage = ['jpg', 'jpeg', 'png'].contains(extension);
              final isPdf = extension == 'pdf';

              return Column(
                children: [
                  if (isImage)
                    SizedBox(height: 200, child: Image.network(file)),
                  if (isPdf)
                    SizedBox(height: 200, child: PDFView(filePath: file)),
                ],
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
