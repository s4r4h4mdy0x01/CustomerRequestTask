import 'package:customer_request_task/core/network/api_service.dart';
import 'package:customer_request_task/features/add_new_customer_request/data/models/customer_request_request_body.dart';
import 'package:customer_request_task/features/add_new_customer_request/data/models/customer_request_response_body.dart';

class CustomerRequestRepo {
  final ApiService _apiService;

  CustomerRequestRepo(this._apiService);

   Future<CustomerRequestResponseBody?> customerRequest(CustomerRequestRequestBody customerRequestRequestBody) async {
    try {
      final response = await _apiService.customerRequest(
        customerRequestRequestBody.name,
        customerRequestRequestBody.phoneNumber??'',
        customerRequestRequestBody.taxNumber??'',
        customerRequestRequestBody.creditLimit?? 0.0,
        customerRequestRequestBody.buildingNumber??'',
        customerRequestRequestBody.streetName??'',
        customerRequestRequestBody.subNumber??0,
        customerRequestRequestBody.zipCode??'',
        customerRequestRequestBody.countryId??1,
        customerRequestRequestBody.ctyId??0,
      
    
      );
      return response;
    } catch (error) {
      print('Error occurred: $error');
      return null;
    }
  }
}