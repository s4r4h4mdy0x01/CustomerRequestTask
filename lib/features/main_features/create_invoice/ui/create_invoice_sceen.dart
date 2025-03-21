import 'package:customer_request_task/core/helper/spacing.dart';
import 'package:customer_request_task/core/theme/color_manager.dart';
import 'package:customer_request_task/core/widgets/app_text_form_field.dart';
import 'package:customer_request_task/core/widgets/text_field_time.dart';
import 'package:customer_request_task/features/leader/add_new_customer_request/ui/widgets/customer_dropdowm.dart';
import 'package:customer_request_task/features/main_features/create_invoice/data/models/invoice_model.dart';
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
        backgroundColor: ColorManager.primary,
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
          var cubit = context.read<CreateInvoiceCubit>();
          return _buildInvoiceForm(context, cubit);
        },
      ),
    );
  }

  Widget _buildInvoiceForm(BuildContext context, CreateInvoiceCubit cubit) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'رقم الفاتورة ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              AppTextFormField(
                hintText: 'رقم الفاتورة ',
                controller: cubit.invoiceNumberController,
                keyboardType: TextInputType.number,
                borderRadius: 16,
                borderSide: BorderSide(),
              ),
              verticalSpace(10),
              const Text(
                'اسم العميل',

                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),

              CustomDropdownField2<String, String>(
                value: cubit.invoiceModel.customer,
                label: cubit.invoiceModel.customer ?? 'اسم العميل',
                items: cubit.customers,
                onChanged: (value) {
                  cubit.selectCustomer(value);
                },
                mapToT: (item) => item, // إرجاع العنصر كما هو
              ),

              verticalSpace(10),
              const Text(
                'اسم المندوب',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              CustomDropdownField2<String, String>(
                value: cubit.invoiceModel.representative,
                label: cubit.invoiceModel.representative ?? 'اسم المندوب',
                items: cubit.representatives,
                onChanged: (value) {
                  cubit.selectRepresentative(value);
                },
                mapToT: (item) => item, // إرجاع العنصر كما هو
              ),

              verticalSpace(10),

              TextfieldTime(
                hintText: 'YYYY-MM-DD',
                controller: cubit.invoiceDateController,
                onTap: () {
                  cubit.selectInvoiceDate(context);
                },
              ),
              verticalSpace(10),
              TextfieldTime(
                hintText: 'YYYY-MM-DD',
                controller: cubit.dueDateController,
                onTap: () {
                  cubit.selectDueDate(context);
                },
              ),
              verticalSpace(10),
              _buildProductSelection(context, cubit, cubit.invoiceModel),

              _buildProductList(cubit),
              verticalSpace(10),
              AppTextFormField(
                hintText: 'خصم',
                controller: cubit.discountController,
                keyboardType: TextInputType.number,
                borderRadius: 16,
                onChanged: (value) => cubit.updateDiscount(value),
                borderSide: BorderSide(),
              ),
              const Text(
                'نوع الخصم',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile<bool>(
                      title: const Text("نسبة مئوية"),
                      value: true,
                      groupValue: cubit.isPercentage,
                      onChanged: (value) {
                        cubit.toggleDiscountType(value!);
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile<bool>(
                      title: const Text("رقم ثابت"),
                      value: false,
                      groupValue: cubit.isPercentage,
                      onChanged: (value) {
                        cubit.toggleDiscountType(value!);
                      },
                    ),
                  ),
                ],
              ),

              verticalSpace(10),
              _buildSummary(cubit),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildSummary(CreateInvoiceCubit cubit) {
  return Column(
    children: [
      AppTextFormField(
        hintText: 'الإجمالي:        ${cubit.calculateTotal()}',
        keyboardType: TextInputType.none,
        borderSide: BorderSide(),
        borderRadius: 16,
        readOnly: true,
      ),
      verticalSpace(10),
      AppTextFormField(
        hintText: 'بعد الخصم:        ${cubit.calculateTotalAfterDiscount()}',
        keyboardType: TextInputType.none,
        borderSide: BorderSide(),
        borderRadius: 16,
        readOnly: true,
      ),
      verticalSpace(10),
      AppTextFormField(
        hintText: 'الضريبة:        ${cubit.vatTotal()}',
        keyboardType: TextInputType.none,
        borderSide: BorderSide(),
        borderRadius: 16,
        readOnly: true,
      ),
      verticalSpace(10),
      AppTextFormField(
        hintText: 'الإجمالي الكلي:        ${cubit.calculateGrandTotal()}',
        keyboardType: TextInputType.none,
        borderSide: BorderSide(),
        borderRadius: 16,
        readOnly: true,
      ),
    ],
  );
}

Widget _buildProductSelection(
  BuildContext context,
  CreateInvoiceCubit cubit,
  InvoiceModel invoiceDetails,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'المنتجات',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),

      AppTextFormField(
        borderSide: BorderSide(),

        hintText: 'اختر المنتجات',
        borderRadius: 16,
        suffixIcon: const Icon(Icons.arrow_drop_down),
        controller: TextEditingController(
          text:
              invoiceDetails.selectedProducts.isEmpty
                  ? 'اختر المنتجات'
                  : invoiceDetails.selectedProducts
                      .map((product) => product['name'])
                      .join(', '),
        ),
        onTap: () => _showProductDialog(context, cubit),
        readOnly: true,
      ),
    ],
  );
}

void _showProductDialog(BuildContext context, CreateInvoiceCubit cubit) {
  TextEditingController searchController = TextEditingController();
  showDialog(
    context: context,
    builder: (BuildContext dialogContext) {
      return BlocProvider.value(
        value: cubit,
        child: AlertDialog(
          title: const Text('اختر منتجات'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: searchController,
                decoration: const InputDecoration(hintText: 'ابحث عن منتج'),
                onChanged: (query) => cubit.filterProducts(query),
              ),
              Expanded(
                child: BlocBuilder<CreateInvoiceCubit, CreateInvoiceState>(
                  builder: (context, state) {
                    List<String> displayList =
                        cubit.filteredProducts.isEmpty
                            ? cubit.products
                            : cubit.filteredProducts;
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: displayList.length,
                      itemBuilder: (context, index) {
                        String product = displayList[index];
                        return CheckboxListTile(
                          title: Text(product),
                          value: cubit.invoiceModel.selectedProducts.any(
                            (item) => item['name'] == product,
                          ),
                          onChanged: (bool? value) {
                            if (value == true) {
                              cubit.addProduct(product);
                            } else {
                              int removeIndex = cubit
                                  .invoiceModel
                                  .selectedProducts
                                  .indexWhere(
                                    (item) => item['name'] == product,
                                  );
                              if (removeIndex != -1) {
                                cubit.removeProduct(removeIndex);
                              }
                            }
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('تم'),
            ),
          ],
        ),
      );
    },
  );
}

Widget _buildProductList(CreateInvoiceCubit cubit) {
  return BlocBuilder<CreateInvoiceCubit, CreateInvoiceState>(
    builder: (context, state) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: cubit.invoiceModel.selectedProducts.length,
        itemBuilder: (context, index) {
          var product = cubit.invoiceModel.selectedProducts[index];
          return Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      product['name'],
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  Text(
                    'سعر الوحدة: ${product['price']}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () => cubit.updateQuantity(index, -1),
                  ),
                  Text(
                    '${product['quantity']}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () => cubit.updateQuantity(index, 1),
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => cubit.removeProduct(index),
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
