class RegisterModel {
  final String firstName;
  final String lastName;
  final String emailPhone;
  final String password;
  final String confirmPassword;
  final String employeeStatus;

  RegisterModel({
    required this.firstName,
    required this.lastName,
    required this.emailPhone,
    required this.password,
    required this.confirmPassword,
    required this.employeeStatus,
  });

  // Method to convert RegisterModel object to JSON
  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'emailPhone': emailPhone,
      'password': password,
      'confirmPassword': confirmPassword,
      'employeeStatus': employeeStatus,
    };
  }

  // Method to create RegisterModel object from JSON
  factory RegisterModel.fromJson(Map<String, dynamic> json) {
    return RegisterModel(
      firstName: json['firstName'],
      lastName: json['lastName'],
      emailPhone: json['emailPhone'],
      password: json['password'],
      confirmPassword: json['confirmPassword'],
      employeeStatus: json['employeeStatus'],
    );
  }
}