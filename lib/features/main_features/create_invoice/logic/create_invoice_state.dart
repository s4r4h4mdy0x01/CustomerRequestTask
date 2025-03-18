import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_invoice_state.freezed.dart';

@freezed
class CreateInvoiceState with _$CreateInvoiceState {
  const factory CreateInvoiceState.initial() = _Initial;
  const factory CreateInvoiceState.loading() = Loading;
}
