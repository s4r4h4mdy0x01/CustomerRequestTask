class LoginInstitutionState {
  final String? selectedEmployeeStatus;
  final bool isRegisterButtonEnabled;

  LoginInstitutionState({
    this.selectedEmployeeStatus,
    this.isRegisterButtonEnabled = false,
  });

  LoginInstitutionState copyWith({
    String? selectedEmployeeStatus,
    bool? isRegisterButtonEnabled,
  }) {
    return LoginInstitutionState(
      selectedEmployeeStatus: selectedEmployeeStatus ?? this.selectedEmployeeStatus,
      isRegisterButtonEnabled: isRegisterButtonEnabled ?? this.isRegisterButtonEnabled,
    );
  }
}