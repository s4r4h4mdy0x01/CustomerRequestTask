import 'package:json_annotation/json_annotation.dart';
part 'customer_request_request_body.g.dart';
@JsonSerializable()
class CustomerRequestRequestBody {
  final String name;
  final String phoneNumber;
  final String? taxNumber;
  final double? creditLimit;
  final String? buildingNumber;
  final String? streetName;
  final int? subNumber;
  final String? zipCode;
  final String? cityEnName;
  final String? cityArName;
  final String? countryEnName;
  final String? countryArName;


  CustomerRequestRequestBody({required this.name, required this.phoneNumber, required this.taxNumber, required this.creditLimit, required this.buildingNumber, required this.streetName, required this.subNumber, required this.zipCode, required this.cityEnName, required this.cityArName, required this.countryEnName, required this.countryArName,});
   Map<String, dynamic> toJson() => _$CustomerRequestRequestBodyToJson(this);
}