import 'package:json_annotation/json_annotation.dart';

part 'customer_request_response_body.g.dart';

@JsonSerializable()
class CustomerRequestResponseBody {
  final int statusCode;
  final String message;
  final bool succeeded;
  final CustomerData data;
  final List<String> errors;

  CustomerRequestResponseBody(
    this.data, {
    required this.statusCode,
    required this.message,
    required this.succeeded,
    required this.errors,
  });
  factory CustomerRequestResponseBody.fromJson(Map<String, dynamic> json) =>
      _$CustomerRequestResponseBodyFromJson(json);
}

@JsonSerializable()
class CustomerData {
  final String name;
  final String phoneNumber;
  final String taxNumber;
  final double creditLimit;
  final String buildingNumber;
  final String streetName;
  final int subNumber;
  final String zipCode;
  final String cityEnName;
  final String cityArName;
  final String countryEnName;
  final String countryArName;
  final List<String> files;

  CustomerData({
    required this.name,
    required this.phoneNumber,
    required this.taxNumber,
    required this.creditLimit,
    required this.buildingNumber,
    required this.streetName,
    required this.subNumber,
    required this.zipCode,
    required this.cityEnName,
    required this.cityArName,
    required this.countryEnName,
    required this.countryArName,
    required this.files,
  });
  factory CustomerData.fromJson(Map<String, dynamic> json) =>
      _$CustomerDataFromJson(json);
}
