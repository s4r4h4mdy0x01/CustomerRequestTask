import 'package:customer_request_task/core/network/api_constants.dart';
import 'package:customer_request_task/features/employee/leave_request/data/models/vacation_requests_response_body.dart';
import 'package:customer_request_task/features/employee/money_request/data/models/borrow_requests_response_model.dart';
import 'package:customer_request_task/features/leader/add_new_customer_request/data/models/customer_request_response_body.dart';
import 'package:customer_request_task/features/auth/data/authintication/auth_model.dart';
import 'package:customer_request_task/features/auth/data/authintication/success_model.dart';
import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
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
    @Part(name: 'countryId') int countryId,
    @Part(name: 'cityId') int cityId,
    @Part(name: 'files') List<MultipartFile> files,
  );
  // login
  @POST(ApiConstants.login)
  Future<SuccessModel> login(@Body() AuthModel authModel);
  // Borrow Requests
  @POST(ApiConstants.borrowRequests)
  @MultiPart()
  Future<BorrowRequestsResponseBody> borrowRequests(
    @Part(name: 'borrowRequestDate') String borrowRequestDate,
    @Part(name: 'borrowValue') double borrowValue,
    @Part(name: 'reason') String reason,
  );
  // Vacation Requests
  @POST(ApiConstants.vacationRequests)
  @MultiPart()
  Future<VacationRequestsResponseBody> vacationRequests(
    @Part(name: 'dateFrom') String dateFrom,
    @Part(name: 'dateTo') String dateTo,
    @Part(name: 'reason') String reason,
  );
}
