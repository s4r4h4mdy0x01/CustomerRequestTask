// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_request_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerRequestRequestBody _$CustomerRequestRequestBodyFromJson(
  Map<String, dynamic> json,
) => CustomerRequestRequestBody(
  name: json['name'] as String,
  phoneNumber: json['phoneNumber'] as String,
  taxNumber: json['taxNumber'] as String?,
  creditLimit: (json['creditLimit'] as num?)?.toDouble(),
  buildingNumber: json['buildingNumber'] as String?,
  streetName: json['streetName'] as String?,
  subNumber: (json['subNumber'] as num?)?.toInt(),
  zipCode: json['zipCode'] as String?,
  cityEnName: json['cityEnName'] as String?,
  cityArName: json['cityArName'] as String?,
  countryEnName: json['countryEnName'] as String?,
  countryArName: json['countryArName'] as String?,
);

Map<String, dynamic> _$CustomerRequestRequestBodyToJson(
  CustomerRequestRequestBody instance,
) => <String, dynamic>{
  'name': instance.name,
  'phoneNumber': instance.phoneNumber,
  'taxNumber': instance.taxNumber,
  'creditLimit': instance.creditLimit,
  'buildingNumber': instance.buildingNumber,
  'streetName': instance.streetName,
  'subNumber': instance.subNumber,
  'zipCode': instance.zipCode,
  'cityEnName': instance.cityEnName,
  'cityArName': instance.cityArName,
  'countryEnName': instance.countryEnName,
  'countryArName': instance.countryArName,
};
