import 'package:customer_request_task/core/network/api_constants.dart';
import 'package:customer_request_task/features/add_new_customer_request/data/models/customer_request_response_body.dart';
import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';
@RestApi(baseUrl:ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
   @POST(ApiConstants.customerRequestEndpoint)
    @MultiPart()
  Future<CustomerRequestResponseBody> customerRequest(
    @Part(name: 'name') String name,
    @Part(name: 'phoneNumber') String phoneNumber,
    @Part(name: 'taxNumber') String taxNumber,
    @Part(name: 'creditLimit') double creditLimit,
    @Part(name: 'buildingNumber') String buildingNumber,
    @Part(name: 'streetName') String streetName,
    @Part(name: 'subNumber') int subNumber,
    @Part(name: 'zipCode') String zipCode,
    @Part(name: 'cityEnName') String cityEnName,
    @Part(name: 'cityArName') String cityArName,
    @Part(name: 'countryEnName') String countryEnName,
    @Part(name: 'countryArName') String countryArName,
  );
}