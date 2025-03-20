class InvoiceModel {
  String? invoiceNumber;
  String? customer;
  String? representative;
  DateTime? invoiceDate;
  DateTime? dueDate;
  List<Map<String, dynamic>> selectedProducts;
  double discount;
  double vat;

  InvoiceModel({
    this.invoiceNumber,
    this.customer,
    this.representative,
    this.invoiceDate,
    this.dueDate,
    this.selectedProducts = const [],
    this.discount = 0.0,
    this.vat = 1.0, // ضريبة القيمة المضافة
  });
}
