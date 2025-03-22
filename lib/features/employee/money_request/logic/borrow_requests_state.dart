import 'package:freezed_annotation/freezed_annotation.dart';

part 'borrow_requests_state.freezed.dart';

@freezed
class BorrowRequestsState<T> with _$BorrowRequestsState<T> {
  const factory BorrowRequestsState.initial() = _Initial;
  const factory BorrowRequestsState.loading() = Loading;
  const factory BorrowRequestsState.success(T data) = Success<T>;
  const factory BorrowRequestsState.failure(String error) = Failure;
}
