import 'package:customer_request_task/features/auth/data/authintication/auth_model.dart';
import 'package:customer_request_task/features/auth/data/repo/login_repo.dart';
import 'package:customer_request_task/features/auth/logic/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  Future<void> emitLoginStates() async {
    if (!formKey.currentState!.validate()) return;
    emit(const LoginState.loading());

    try {
      final response = await _loginRepo.login(
        AuthModel(
          username: usernameController.text.trim(),
          password: passwordController.text.trim(),
        ),
      );

      if (response != null &&
          response.succeeded == true &&
          response.data.isAuthenticated == true) {
        final String accessToken = response.data.accessToken;

        if (accessToken.isEmpty) {
          emit(const LoginState.error(error: "فشل في استلام رمز الوصول"));
          return;
        }

        final String userRole =
            (usernameController.text.trim() == "erpadmin") ? "مشرف" : "مندوب";

        emit(LoginState.success(accessToken: accessToken, userRole: userRole));
      } else {
        emit(
          LoginState.error(
            error: response?.message ?? "فشل تسجيل الدخول، تحقق من البيانات",
          ),
        );
      }
    } catch (e) {
      emit(
        const LoginState.error(error: "خطأ في الاتصال بالسيرفر، حاول مجددًا"),
      );
    }
  }

  @override
  Future<void> close() {
    usernameController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
