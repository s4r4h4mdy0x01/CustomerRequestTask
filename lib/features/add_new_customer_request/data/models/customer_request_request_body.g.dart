// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_request_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerRequestRequestBody _$CustomerRequestRequestBodyFromJson(
  Map<String, dynamic> json,
) => CustomerRequestRequestBody(
  name: json['name'] as String,
  phoneNumber: json['phoneNumber'] as String?,
  taxNumber: json['taxNumber'] as String?,
  creditLimit: (json['creditLimit'] as num?)?.toDouble(),
  buildingNumber: json['buildingNumber'] as String?,
  streetName: json['streetName'] as String?,
  subNumber: (json['subNumber'] as num?)?.toInt(),
  zipCode: json['zipCode'] as String?,
  countryId: (json['countryId'] as num?)?.toInt(),
  ctyId: (json['ctyId'] as num?)?.toInt(),
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
  'ctyId': instance.ctyId,
  'countryId': instance.countryId,
  'zipCode': instance.zipCode,
};
