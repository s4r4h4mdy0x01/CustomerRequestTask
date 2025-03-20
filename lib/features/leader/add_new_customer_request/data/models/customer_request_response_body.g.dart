// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_request_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerRequestResponseBody _$CustomerRequestResponseBodyFromJson(
  Map<String, dynamic> json,
) => CustomerRequestResponseBody(
  CustomerData.fromJson(json['data'] as Map<String, dynamic>),
  statusCode: (json['statusCode'] as num).toInt(),
  message: json['message'] as String,
  succeeded: json['succeeded'] as bool,
  errors: (json['errors'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$CustomerRequestResponseBodyToJson(
  CustomerRequestResponseBody instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'succeeded': instance.succeeded,
  'data': instance.data,
  'errors': instance.errors,
};

CustomerData _$CustomerDataFromJson(Map<String, dynamic> json) => CustomerData(
  name: json['name'] as String,
  phoneNumber: json['phoneNumber'] as String,
  taxNumber: json['taxNumber'] as String,
  creditLimit: (json['creditLimit'] as num).toDouble(),
  buildingNumber: json['buildingNumber'] as String,
  streetName: json['streetName'] as String,
  subNumber: (json['subNumber'] as num).toInt(),
  zipCode: json['zipCode'] as String,
  cityEnName: json['cityEnName'] as String,
  cityArName: json['cityArName'] as String,
  countryEnName: json['countryEnName'] as String,
  countryArName: json['countryArName'] as String,
  files: (json['files'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$CustomerDataToJson(CustomerData instance) =>
    <String, dynamic>{
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
      'files': instance.files,
    };
