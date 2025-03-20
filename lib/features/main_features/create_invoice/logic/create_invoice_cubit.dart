import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:customer_request_task/features/main_features/create_invoice/data/models/invoice_model.dart';
import 'package:customer_request_task/features/main_features/create_invoice/logic/create_invoice_state.dart';

class CreateInvoiceCubit extends Cubit<CreateInvoiceState> {
  CreateInvoiceCubit() : super(const CreateInvoiceState.initial());

  InvoiceModel invoiceModel = InvoiceModel();
  TextEditingController invoiceNumberController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  final TextEditingController invoiceDateController = TextEditingController();
  final TextEditingController dueDateController = TextEditingController();

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
  bool isPercentage = false;
  List<String> filteredProducts = [];
  void filterProducts(String query) {
    filteredProducts =
        products.where((product) => product.contains(query)).toList();
    emit(CreateInvoiceState.updated(invoiceModel));
  }

  void addProduct(String product) {
    if (!invoiceModel.selectedProducts.any((item) => item['name'] == product)) {
      final updatedProducts = List<Map<String, dynamic>>.from(
        invoiceModel.selectedProducts,
      )..add({
        'name': product,
        'price': productPrices[product]! * 1,
        'quantity': 1,
      });

      invoiceModel = InvoiceModel(
        invoiceNumber: invoiceModel.invoiceNumber,
        customer: invoiceModel.customer,
        representative: invoiceModel.representative,
        invoiceDate: invoiceModel.invoiceDate,
        dueDate: invoiceModel.dueDate,
        selectedProducts: updatedProducts,
        discount: invoiceModel.discount,
      );

      emit(CreateInvoiceState.updated(invoiceModel));
    }
  }

  void removeProduct(int index) {
    final updatedProducts = List<Map<String, dynamic>>.from(
      invoiceModel.selectedProducts,
    );

    if (index >= 0 && index < updatedProducts.length) {
      updatedProducts.removeAt(index);

      invoiceModel = InvoiceModel(
        invoiceNumber: invoiceModel.invoiceNumber,
        customer: invoiceModel.customer,
        representative: invoiceModel.representative,
        invoiceDate: invoiceModel.invoiceDate,
        dueDate: invoiceModel.dueDate,
        selectedProducts: updatedProducts,
        discount: invoiceModel.discount,
      );

      emit(CreateInvoiceState.updated(invoiceModel));
    }
  }

  void selectCustomer(String? customer) {
    invoiceModel.customer = customer;
    emit(CreateInvoiceState.updated(invoiceModel));
  }

  void selectRepresentative(String? representative) {
    invoiceModel.representative = representative;
    emit(CreateInvoiceState.updated(invoiceModel));
  }

  double calculateTotal() => invoiceModel.selectedProducts.fold(
    0,
    (total, item) => total + item['price'],
  );

  double calculateTotalAfterDiscount() =>
      calculateTotal() - invoiceModel.discount;

  double calculateGrandTotal() => calculateTotalAfterDiscount() + vatTotal();

  double vatTotal() => calculateTotalAfterDiscount() * 0.15;
  void updateQuantity(int index, int change) {
    final updatedProducts = List<Map<String, dynamic>>.from(
      invoiceModel.selectedProducts,
    );

    if (index >= 0 && index < updatedProducts.length) {
      final product = updatedProducts[index];

      final newQuantity = product['quantity'] + change;
      if (newQuantity >= 1) {
        updatedProducts[index] = {
          ...product,
          'quantity': newQuantity,
          'price': productPrices[product['name']]! * newQuantity,
        };

        invoiceModel = InvoiceModel(
          invoiceNumber: invoiceModel.invoiceNumber,
          customer: invoiceModel.customer,
          representative: invoiceModel.representative,
          invoiceDate: invoiceModel.invoiceDate,
          dueDate: invoiceModel.dueDate,
          selectedProducts: updatedProducts, // تحديث القائمة بالكامل
          discount: invoiceModel.discount,
        );

        emit(CreateInvoiceState.updated(invoiceModel));
      }
    }
  }

  Future<void> selectInvoiceDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      String formattedDate =
          "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
      invoiceDateController.text = formattedDate;
      emit(CreateInvoiceState.updated(invoiceModel));
    }
  }

  Future<void> selectDueDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      String formattedDate =
          "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
      dueDateController.text = formattedDate;
      emit(CreateInvoiceState.updated(invoiceModel));
    }
  }

  void updateDiscount(String discount) {
    double parsedDiscount = double.tryParse(discount) ?? 0.0;
    if (isPercentage) {
      parsedDiscount = (calculateTotal() * parsedDiscount) / 100;
    }

    if (parsedDiscount != invoiceModel.discount) {
      invoiceModel = InvoiceModel(
        invoiceNumber: invoiceModel.invoiceNumber,
        customer: invoiceModel.customer,
        representative: invoiceModel.representative,
        invoiceDate: invoiceModel.invoiceDate,
        dueDate: invoiceModel.dueDate,
        selectedProducts: invoiceModel.selectedProducts,
        discount: parsedDiscount, // تحديث قيمة الخصم
      );

      emit(CreateInvoiceState.updated(invoiceModel));
    }
  }

  void toggleDiscountType(bool isPercentage) {
    this.isPercentage = isPercentage;
    emit(CreateInvoiceState.updated(invoiceModel));
  }
}
