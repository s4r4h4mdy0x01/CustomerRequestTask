// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_invoice_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateInvoiceState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateInvoiceState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateInvoiceState()';
}


}




/// @nodoc


class _Initial implements CreateInvoiceState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateInvoiceState.initial()';
}


}




/// @nodoc


class Loading implements CreateInvoiceState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateInvoiceState.loading()';
}


}




/// @nodoc


class Updated implements CreateInvoiceState {
  const Updated(this.invoiceModel);
  

 final  InvoiceModel invoiceModel;

/// Create a copy of CreateInvoiceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatedCopyWith<Updated> get copyWith => _$UpdatedCopyWithImpl<Updated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Updated&&(identical(other.invoiceModel, invoiceModel) || other.invoiceModel == invoiceModel));
}


@override
int get hashCode => Object.hash(runtimeType,invoiceModel);

@override
String toString() {
  return 'CreateInvoiceState.updated(invoiceModel: $invoiceModel)';
}


}

/// @nodoc
abstract mixin class $UpdatedCopyWith<$Res>  {
  factory $UpdatedCopyWith(Updated value, $Res Function(Updated) _then) = _$UpdatedCopyWithImpl;
@useResult
$Res call({
 InvoiceModel invoiceModel
});



}
/// @nodoc
class _$UpdatedCopyWithImpl<$Res>
    implements $UpdatedCopyWith<$Res> {
  _$UpdatedCopyWithImpl(this._self, this._then);

  final Updated _self;
  final $Res Function(Updated) _then;

/// Create a copy of CreateInvoiceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? invoiceModel = null,}) {
  return _then(Updated(
null == invoiceModel ? _self.invoiceModel : invoiceModel // ignore: cast_nullable_to_non_nullable
as InvoiceModel,
  ));
}


}

// dart format on
