import 'package:customer_request_task/core/network/api_service.dart';
import 'package:customer_request_task/features/employee/money_request/data/models/borrow_requests_model.dart';
import 'package:customer_request_task/features/employee/money_request/data/models/borrow_requests_response_model.dart';

class BorrowRequestsRepo {
  final ApiService _apiService;

  BorrowRequestsRepo(this._apiService);

  Future<BorrowRequestsResponseBody?> borrowRequests(
    BorrowRequestsRequestBody borrowRequestsRequestBody,
  ) async {
    try {
      final response = await _apiService.borrowRequests(
        borrowRequestsRequestBody.borrowRequestDate ?? '',
        borrowRequestsRequestBody.borrowValue,
        borrowRequestsRequestBody.reason ?? '',
      );
      return response;
    } catch (error) {
      print('Error occurred: $error');
      return null;
    }
  }
}
