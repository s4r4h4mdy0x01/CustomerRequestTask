class RegisterState {
  final String? selectedEmployeeStatus;
  final bool isRegisterButtonEnabled;

  RegisterState({
    this.selectedEmployeeStatus,
    this.isRegisterButtonEnabled = false,
  });

  RegisterState copyWith({
    String? selectedEmployeeStatus,
    bool? isRegisterButtonEnabled,
  }) {
    return RegisterState(
      selectedEmployeeStatus: selectedEmployeeStatus ?? this.selectedEmployeeStatus,
      isRegisterButtonEnabled: isRegisterButtonEnabled ?? this.isRegisterButtonEnabled,
    );
  }
}