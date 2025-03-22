import 'package:customer_request_task/core/network/api_service.dart';
import 'package:customer_request_task/features/employee/leave_request/data/models/vacation_requests_request_body.dart';
import 'package:customer_request_task/features/employee/leave_request/data/models/vacation_requests_response_body.dart';

class VacationRequestsRepo {
  final ApiService _apiService;

  VacationRequestsRepo(this._apiService);

  Future<VacationRequestsResponseBody?> vacationRequests(
    VacationRequestsRequestBody vacationRequestsRequestBody,
  ) async {
    try {
      final response = await _apiService.vacationRequests(
        vacationRequestsRequestBody.dateFrom ?? '',
        vacationRequestsRequestBody.dateTo ?? '',
        vacationRequestsRequestBody.reason??'',
      );
      return response;
    } catch (error) {
      print('Error occurred: $error');
      return null;
    }
  }
}
