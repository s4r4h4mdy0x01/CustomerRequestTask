// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'borrow_requests_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BorrowRequestsResponseBody _$BorrowRequestsResponseBodyFromJson(
  Map<String, dynamic> json,
) => BorrowRequestsResponseBody(
  json['message'] as String,
  (json['statusCode'] as num).toInt(),
  json['succeeded'] as bool,
  Data.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BorrowRequestsResponseBodyToJson(
  BorrowRequestsResponseBody instance,
) => <String, dynamic>{
  'message': instance.message,
  'statusCode': instance.statusCode,
  'succeeded': instance.succeeded,
  'data': instance.data,
};

Data _$DataFromJson(Map<String, dynamic> json) => Data(
  id: (json['id'] as num).toInt(),
  borrowRequestDate: json['borrowRequestDate'] as String?,
  borrowValue: (json['borrowValue'] as num).toDouble(),
  reason: json['reason'] as String?,
);

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
  'id': instance.id,
  'borrowRequestDate': instance.borrowRequestDate,
  'borrowValue': instance.borrowValue,
  'reason': instance.reason,
};
