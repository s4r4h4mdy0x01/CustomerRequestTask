// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_request_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CustomerRequestState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerRequestState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CustomerRequestState<$T>()';
}


}




/// @nodoc


class _Initial<T> implements CustomerRequestState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CustomerRequestState<$T>.initial()';
}


}




/// @nodoc


class Loading<T> implements CustomerRequestState<T> {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CustomerRequestState<$T>.loading()';
}


}




/// @nodoc


class Success<T> implements CustomerRequestState<T> {
  const Success(this.data);
  

 final  T data;

/// Create a copy of CustomerRequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<T, Success<T>> get copyWith => _$SuccessCopyWithImpl<T, Success<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'CustomerRequestState<$T>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<T,$Res>  {
  factory $SuccessCopyWith(Success<T> value, $Res Function(Success<T>) _then) = _$SuccessCopyWithImpl;
@useResult
$Res call({
 T data
});



}
/// @nodoc
class _$SuccessCopyWithImpl<T,$Res>
    implements $SuccessCopyWith<T, $Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success<T> _self;
  final $Res Function(Success<T>) _then;

/// Create a copy of CustomerRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(Success<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class Failure<T> implements CustomerRequestState<T> {
  const Failure(this.error);
  

 final  String error;

/// Create a copy of CustomerRequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<T, Failure<T>> get copyWith => _$FailureCopyWithImpl<T, Failure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'CustomerRequestState<$T>.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<T,$Res>  {
  factory $FailureCopyWith(Failure<T> value, $Res Function(Failure<T>) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 String error
});



}
/// @nodoc
class _$FailureCopyWithImpl<T,$Res>
    implements $FailureCopyWith<T, $Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure<T> _self;
  final $Res Function(Failure<T>) _then;

/// Create a copy of CustomerRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(Failure<T>(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FilesUpdated<T> implements CustomerRequestState<T> {
  const FilesUpdated(final  List<File> files): _files = files;
  

 final  List<File> _files;
 List<File> get files {
  if (_files is EqualUnmodifiableListView) return _files;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_files);
}


/// Create a copy of CustomerRequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilesUpdatedCopyWith<T, FilesUpdated<T>> get copyWith => _$FilesUpdatedCopyWithImpl<T, FilesUpdated<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilesUpdated<T>&&const DeepCollectionEquality().equals(other._files, _files));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_files));

@override
String toString() {
  return 'CustomerRequestState<$T>.filesUpdated(files: $files)';
}


}

/// @nodoc
abstract mixin class $FilesUpdatedCopyWith<T,$Res>  {
  factory $FilesUpdatedCopyWith(FilesUpdated<T> value, $Res Function(FilesUpdated<T>) _then) = _$FilesUpdatedCopyWithImpl;
@useResult
$Res call({
 List<File> files
});



}
/// @nodoc
class _$FilesUpdatedCopyWithImpl<T,$Res>
    implements $FilesUpdatedCopyWith<T, $Res> {
  _$FilesUpdatedCopyWithImpl(this._self, this._then);

  final FilesUpdated<T> _self;
  final $Res Function(FilesUpdated<T>) _then;

/// Create a copy of CustomerRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? files = null,}) {
  return _then(FilesUpdated<T>(
null == files ? _self.files : files // ignore: cast_nullable_to_non_nullable
as List<File>,
  ));
}


}

/// @nodoc


class FailureFilePick<T> implements CustomerRequestState<T> {
  const FailureFilePick(this.error);
  

 final  String error;

/// Create a copy of CustomerRequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureFilePickCopyWith<T, FailureFilePick<T>> get copyWith => _$FailureFilePickCopyWithImpl<T, FailureFilePick<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FailureFilePick<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'CustomerRequestState<$T>.failureFilePick(error: $error)';
}


}

/// @nodoc
abstract mixin class $FailureFilePickCopyWith<T,$Res>  {
  factory $FailureFilePickCopyWith(FailureFilePick<T> value, $Res Function(FailureFilePick<T>) _then) = _$FailureFilePickCopyWithImpl;
@useResult
$Res call({
 String error
});



}
/// @nodoc
class _$FailureFilePickCopyWithImpl<T,$Res>
    implements $FailureFilePickCopyWith<T, $Res> {
  _$FailureFilePickCopyWithImpl(this._self, this._then);

  final FailureFilePick<T> _self;
  final $Res Function(FailureFilePick<T>) _then;

/// Create a copy of CustomerRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(FailureFilePick<T>(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
