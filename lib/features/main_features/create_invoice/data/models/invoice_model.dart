class InvoiceModel {
  String? invoiceNumber;
  String? customer;
  String? representative;
  DateTime? invoiceDate;
  DateTime? dueDate;
  List<Map<String, dynamic>> selectedProducts = [];
  double discount = 0;
  double vat = 45.0; // ضريبة القيمة المضافة

  InvoiceModel({
    this.invoiceNumber,
    this.customer,
    this.representative,
    this.invoiceDate,
    this.dueDate,
  });
}
