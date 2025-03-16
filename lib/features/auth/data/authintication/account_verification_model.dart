class AccountVerificationModel {
  final String verificationCode;

  AccountVerificationModel({required this.verificationCode});

  // Method to convert AccountVerificationModel object to JSON
  Map<String, dynamic> toJson() {
    return {
      'verificationCode': verificationCode,
    };
  }

  // Method to create AccountVerificationModel object from JSON
  factory AccountVerificationModel.fromJson(Map<String, dynamic> json) {
    return AccountVerificationModel(
      verificationCode: json['verificationCode'],
    );
  }
}