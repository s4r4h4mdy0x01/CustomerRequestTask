import 'package:json_annotation/json_annotation.dart';
part 'customer_request_request_body.g.dart';
@JsonSerializable()
class CustomerRequestRequestBody {
  final String name;
  final String? phoneNumber;
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


  CustomerRequestRequestBody({required this.name,  this.phoneNumber,  this.taxNumber,  this.creditLimit, this.buildingNumber, this.streetName, this.subNumber, this.zipCode, this.cityEnName,  this.cityArName,  this.countryEnName, this.countryArName,});
   Map<String, dynamic> toJson() => _$CustomerRequestRequestBodyToJson(this);
}