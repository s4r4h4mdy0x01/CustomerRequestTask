import 'package:freezed_annotation/freezed_annotation.dart';

part 'vacation_requests_state.freezed.dart';

@freezed
class VacationRequestsState<T> with _$VacationRequestsState<T> {
  const factory VacationRequestsState.initial() = _Initial;
  const factory VacationRequestsState.loading() = Loading;
  const factory VacationRequestsState.success(T data) = Success<T>;
  const factory VacationRequestsState.failure(String error) = Failure;
}
