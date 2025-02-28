// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations

class _ApiService implements ApiService {
  _ApiService(this._dio, {this.baseUrl, this.errorLogger}) {
    baseUrl ??= 'https://national-quality.runasp.net/';
  }

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<CustomerRequestResponseBody> customerRequest(
    String name,
    String phoneNumber,
    String taxNumber,
    double creditLimit,
    String buildingNumber,
    String streetName,
    int subNumber,
    String zipCode,
    int countryId,
    int ctyId,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry('name', name));
    _data.fields.add(MapEntry('phoneNumber', phoneNumber));
    _data.fields.add(MapEntry('taxNumber', taxNumber));
    _data.fields.add(MapEntry('creditLimit', creditLimit.toString()));
    _data.fields.add(MapEntry('buildingNumber', buildingNumber));
    _data.fields.add(MapEntry('streetName', streetName));
    _data.fields.add(MapEntry('subNumber', subNumber.toString()));
    _data.fields.add(MapEntry('zipCode', zipCode));
    _data.fields.add(MapEntry('countryId', countryId.toString()));
    _data.fields.add(MapEntry('ctyId', ctyId.toString()));
    final _options = _setStreamType<CustomerRequestResponseBody>(
      Options(
            method: 'POST',
            headers: _headers,
            extra: _extra,
            contentType: 'multipart/form-data',
          )
          .compose(
            _dio.options,
            'api/v1/customer-requests',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late CustomerRequestResponseBody _value;
    try {
      _value = CustomerRequestResponseBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
