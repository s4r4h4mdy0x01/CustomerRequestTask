import 'package:customer_request_task/core/widgets/app_text_form_field.dart';
import 'package:customer_request_task/features/add_new_customer_request/ui/widgets/customer_dropdowm.dart';
import 'package:customer_request_task/features/main_features/create_invoice/logic/create_invoice_cubit.dart';
import 'package:customer_request_task/features/main_features/create_invoice/logic/create_invoice_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateInvoiceSceen extends StatelessWidget {
  const CreateInvoiceSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'إنشاء فاتورة',
            style: TextStyle(color: Colors.white),
            textDirection: TextDirection.rtl,
          ),
        ),
      ),
      body: BlocBuilder<CreateInvoiceCubit, CreateInvoiceState>(
        builder: (context, state) {
          final cubit = context.read<CreateInvoiceCubit>();
          return Directionality(
            textDirection: TextDirection.rtl,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'رقم الفاتورة',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    AppTextFormField(
                      hintText: 'رقم الفاتورة ',
                      controller: cubit.invoiceNumberController,
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 20),
                    CustomDropdownField2<String, String>(
                      value: cubit.invoiceModel.customer,
                      label: cubit.invoiceModel.customer ?? 'customer',
                      items: cubit.products,
                      onChanged: (value) {
                        cubit.selectCustomer(value);
                      },
                      mapToT: (item) => item, // إرجاع العنصر كما هو
                    ),
                    const Text(
                      'اسم المندوب',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    CustomDropdownField2<String, String>(
                      value: cubit.invoiceModel.representative,
                      label: cubit.invoiceModel.representative ?? 'customer',
                      items: cubit.representatives,
                      onChanged: (value) {
                        cubit.selectRepresentative(value);
                      },
                      mapToT: (item) => item, // إرجاع العنصر كما هو
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
