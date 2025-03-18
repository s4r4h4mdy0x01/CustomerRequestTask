// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'money_request_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MoneyRequestState {

 String get requestDate;
/// Create a copy of MoneyRequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoneyRequestStateCopyWith<MoneyRequestState> get copyWith => _$MoneyRequestStateCopyWithImpl<MoneyRequestState>(this as MoneyRequestState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoneyRequestState&&(identical(other.requestDate, requestDate) || other.requestDate == requestDate));
}


@override
int get hashCode => Object.hash(runtimeType,requestDate);

@override
String toString() {
  return 'MoneyRequestState(requestDate: $requestDate)';
}


}

/// @nodoc
abstract mixin class $MoneyRequestStateCopyWith<$Res>  {
  factory $MoneyRequestStateCopyWith(MoneyRequestState value, $Res Function(MoneyRequestState) _then) = _$MoneyRequestStateCopyWithImpl;
@useResult
$Res call({
 String requestDate
});



}
/// @nodoc
class _$MoneyRequestStateCopyWithImpl<$Res>
    implements $MoneyRequestStateCopyWith<$Res> {
  _$MoneyRequestStateCopyWithImpl(this._self, this._then);

  final MoneyRequestState _self;
  final $Res Function(MoneyRequestState) _then;

/// Create a copy of MoneyRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? requestDate = null,}) {
  return _then(_self.copyWith(
requestDate: null == requestDate ? _self.requestDate : requestDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _MoneyRequestState implements MoneyRequestState {
  const _MoneyRequestState({this.requestDate = ''});
  

@override@JsonKey() final  String requestDate;

/// Create a copy of MoneyRequestState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoneyRequestStateCopyWith<_MoneyRequestState> get copyWith => __$MoneyRequestStateCopyWithImpl<_MoneyRequestState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoneyRequestState&&(identical(other.requestDate, requestDate) || other.requestDate == requestDate));
}


@override
int get hashCode => Object.hash(runtimeType,requestDate);

@override
String toString() {
  return 'MoneyRequestState(requestDate: $requestDate)';
}


}

/// @nodoc
abstract mixin class _$MoneyRequestStateCopyWith<$Res> implements $MoneyRequestStateCopyWith<$Res> {
  factory _$MoneyRequestStateCopyWith(_MoneyRequestState value, $Res Function(_MoneyRequestState) _then) = __$MoneyRequestStateCopyWithImpl;
@override @useResult
$Res call({
 String requestDate
});



}
/// @nodoc
class __$MoneyRequestStateCopyWithImpl<$Res>
    implements _$MoneyRequestStateCopyWith<$Res> {
  __$MoneyRequestStateCopyWithImpl(this._self, this._then);

  final _MoneyRequestState _self;
  final $Res Function(_MoneyRequestState) _then;

/// Create a copy of MoneyRequestState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? requestDate = null,}) {
  return _then(_MoneyRequestState(
requestDate: null == requestDate ? _self.requestDate : requestDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
