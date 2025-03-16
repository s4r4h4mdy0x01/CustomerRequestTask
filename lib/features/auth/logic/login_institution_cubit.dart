import 'package:customer_request_task/core/helper/extensions.dart';
import 'package:customer_request_task/core/router/routes_string.dart';
import 'package:customer_request_task/features/auth/logic/login_institution_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginInstitutionCubit extends Cubit<LoginInstitutionState> {
  LoginInstitutionCubit() : super(LoginInstitutionState());

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailPhoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  void setEmployeeStatus(String status) {
    emit(state.copyWith(selectedEmployeeStatus: status));
    _updateRegisterButtonState();
  }

  void _updateRegisterButtonState() {
    emit(
      state.copyWith(
        isRegisterButtonEnabled:
            firstNameController.text.isNotEmpty &&
            lastNameController.text.isNotEmpty &&
            state.selectedEmployeeStatus != null &&
            emailPhoneController.text.isNotEmpty &&
            passwordController.text.isNotEmpty &&
            confirmPasswordController.text.isNotEmpty,
      ),
    );
  }

  void navigateBasedOnEmployeeStatus(BuildContext context) {
    if (state.selectedEmployeeStatus == 'مندوب') {
      context.pushNamed(
        RoutesString.sales,
        arguments: {'userRole': '', 'accessToken': ''},
      );
    } else if (state.selectedEmployeeStatus == 'مشرف') {
      context.pushNamed(RoutesString.leader);
    } else if (state.selectedEmployeeStatus == 'موظف') {
      context.pushNamed(RoutesString.employee);
    }
  }

  @override
  Future<void> close() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailPhoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    return super.close();
  }
}
