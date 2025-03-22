import 'package:json_annotation/json_annotation.dart';
part 'vacation_requests_response_body.g.dart';

@JsonSerializable()
class VacationRequestsResponseBody {
  final String message;
  final int statusCode;
  final bool succeeded;
  final Data data;

  VacationRequestsResponseBody(
    this.message,
    this.statusCode,
    this.succeeded,
    this.data,
  );
  factory VacationRequestsResponseBody.fromJson(Map<String, dynamic> json) =>
      _$VacationRequestsResponseBodyFromJson(json);
}

@JsonSerializable()
class Data {
  final int id;
  final String? dateFrom;
  final String? dateTo;
  final String? reason;

  Data(this.dateFrom, this.dateTo, {required this.id, required this.reason});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
