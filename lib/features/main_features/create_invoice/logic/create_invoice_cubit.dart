import 'package:customer_request_task/features/main_features/create_invoice/data/models/invoice_model.dart';
import 'package:customer_request_task/features/main_features/create_invoice/logic/create_invoice_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateInvoiceCubit extends Cubit<CreateInvoiceState> {
  InvoiceModel invoiceModel = InvoiceModel();
  TextEditingController invoiceNumberController = TextEditingController();
  TextEditingController discountController = TextEditingController();

  CreateInvoiceCubit() : super(const CreateInvoiceState.initial());

  final List<String> customers = [
    'النحلات الثلاثة',
    'صياب للبلاستيك',
    'فرسان التغلييف',
  ];
  final List<String> representatives = ['حسن حكيم', 'امجد سليم', 'ماجدة أغا'];
  final List<String> products = ['سكر', 'ملح', 'فلفل اسود', 'كمون'];
  final Map<String, double> productPrices = {
    'سكر': 50,
    'ملح': 100,
    'فلفل اسود': 150,
    'كمون': 200,
  };
  void selectCustomer(String? customer) {
    invoiceModel.customer = customer;
  }

  // اختيار المندوب
  void selectRepresentative(String? representative) {
    invoiceModel.representative = representative;
  }

  // اختيار تاريخ الفاتورة
  void selectInvoiceDate(DateTime? date) {
    invoiceModel.invoiceDate = date;
  }

  // اختيار تاريخ الاستحقاق
  void selectDueDate(DateTime? date) {
    invoiceModel.dueDate = date;
  }

  // إضافة منتج
  void addProduct(String product) {
    if (invoiceModel.selectedProducts.any((item) => item['name'] == product)) {
      invoiceModel.selectedProducts.add({
        'name': product,
        'price': productPrices[product]! * 1, // السعر يبدأ من 1 وحدة
        'quantity': 1,
      });
    }
  }

  void updateQuantity(int index, int change) {
    if (invoiceModel.selectedProducts[index]['quantity'] + change >= 1) {
      invoiceModel.selectedProducts[index]['quantity'] += change;
      invoiceModel.selectedProducts[index]['price'] =
          productPrices[invoiceModel.selectedProducts[index]['name']]! *
          invoiceModel.selectedProducts[index]['quantity'];
    }
  }

  // حذف منتج
  void removeProduct(int index) {
    invoiceModel.selectedProducts.removeAt(index);
  }

  // تحديث الخصم
  void updateDiscount(double discount) {
    invoiceModel.discount = discount;
  }

  // حساب الإجمالي
  double calculateTotal() {
    double total = 0;
    for (var product in invoiceModel.selectedProducts) {
      total += product['price'];
    }
    return total;
  }

  // حساب الإجمالي بعد الخصم
  double calculateTotalAfterDiscount() {
    return calculateTotal() - invoiceModel.discount;
  }

  // حساب الإجمالي الكلي (بعد الخصم + الضريبة)
  double calculateGrandTotal() {
    return calculateTotalAfterDiscount() + invoiceModel.vat;
  }

  // الحصول على بيانات الفاتورة
  InvoiceModel getInvoiceDetails() {
    return invoiceModel;
  }
}
