import 'package:json_annotation/json_annotation.dart';
part 'borrow_requests_response_model.g.dart';

@JsonSerializable()
class BorrowRequestsResponseBody {
  final int id;
  final String? borrowRequestDate;
  final double borrowValue;
  final String? reason;
  BorrowRequestsResponseBody({
    required this.id,
    required this.borrowRequestDate,
    
    required this.borrowValue,
    required this.reason,
  });
  factory BorrowRequestsResponseBody.fromJson(Map<String, dynamic> json) =>
      _$BorrowRequestsResponseBodyFromJson(json);


}
