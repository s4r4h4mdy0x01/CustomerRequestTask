import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_request_state.freezed.dart';

@freezed
class CustomerRequestState<T> with _$CustomerRequestState<T> {
  const factory CustomerRequestState.initial() = _Initial;
  const factory CustomerRequestState.loading() = Loading;
  const factory CustomerRequestState.success(T data) = Success<T>;
  const factory CustomerRequestState.failure(String error) = Failure;
}
