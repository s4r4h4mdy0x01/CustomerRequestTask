import 'package:freezed_annotation/freezed_annotation.dart';

part 'money_request_state.freezed.dart';

@freezed
abstract class MoneyRequestState with _$MoneyRequestState {
  const factory MoneyRequestState({@Default('') String requestDate}) =
      _MoneyRequestState;
      
      

  
}
