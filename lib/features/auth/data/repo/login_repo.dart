import 'package:customer_request_task/core/network/api_service.dart';
import 'package:customer_request_task/features/auth/data/authintication/auth_model.dart';
import 'package:customer_request_task/features/auth/data/authintication/success_model.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<SuccessModel?> login(AuthModel authModel) async {
    try {
      final response = await _apiService.login(authModel);
      return response;
    } catch (error) {
      print('Error occurred: $error');
      return null;
    }
  }
}
