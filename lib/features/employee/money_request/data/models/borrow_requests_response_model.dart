import 'package:json_annotation/json_annotation.dart';
part 'borrow_requests_response_model.g.dart';

@JsonSerializable()
class BorrowRequestsResponseBody {
  final String message;
  final int statusCode;
  final bool succeeded;
  final Data data;

  BorrowRequestsResponseBody(
    this.message,
    this.statusCode,
    this.succeeded,
    this.data,
  );
  factory BorrowRequestsResponseBody.fromJson(Map<String, dynamic> json) =>
      _$BorrowRequestsResponseBodyFromJson(json);
}

@JsonSerializable()
class Data {
  final int id;
  final String? borrowRequestDate;
  final double borrowValue;
  final String? reason;

  Data({
    required this.id,
    required this.borrowRequestDate,
    required this.borrowValue,
    required this.reason,
  });
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
