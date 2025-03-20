import 'package:customer_request_task/features/main_features/create_invoice/data/models/invoice_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_invoice_state.freezed.dart';

@freezed
class CreateInvoiceState with _$CreateInvoiceState {
  const factory CreateInvoiceState.initial() = _Initial;
  const factory CreateInvoiceState.loading() = Loading;
    const factory CreateInvoiceState.updated(InvoiceModel invoiceModel) = Updated;
}
