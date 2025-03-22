// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vacation_requests_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VacationRequestsResponseBody _$VacationRequestsResponseBodyFromJson(
  Map<String, dynamic> json,
) => VacationRequestsResponseBody(
  json['message'] as String,
  (json['statusCode'] as num).toInt(),
  json['succeeded'] as bool,
  Data.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$VacationRequestsResponseBodyToJson(
  VacationRequestsResponseBody instance,
) => <String, dynamic>{
  'message': instance.message,
  'statusCode': instance.statusCode,
  'succeeded': instance.succeeded,
  'data': instance.data,
};

Data _$DataFromJson(Map<String, dynamic> json) => Data(
  json['dateFrom'] as String?,
  json['dateTo'] as String?,
  id: (json['id'] as num).toInt(),
  reason: json['reason'] as String?,
);

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
  'id': instance.id,
  'dateFrom': instance.dateFrom,
  'dateTo': instance.dateTo,
  'reason': instance.reason,
};
