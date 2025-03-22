// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'borrow_requests_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BorrowRequestsResponseBody _$BorrowRequestsResponseBodyFromJson(
  Map<String, dynamic> json,
) => BorrowRequestsResponseBody(
  id: (json['id'] as num).toInt(),
  borrowRequestDate: json['borrowRequestDate'] as String?,
  borrowValue: (json['borrowValue'] as num).toDouble(),
  reason: json['reason'] as String?,
);

Map<String, dynamic> _$BorrowRequestsResponseBodyToJson(
  BorrowRequestsResponseBody instance,
) => <String, dynamic>{
  'id': instance.id,
  'borrowRequestDate': instance.borrowRequestDate,
  'borrowValue': instance.borrowValue,
  'reason': instance.reason,
};
