class SuccessModel {
  final String message;
  final int statusCode;
  final bool succeeded;
  final Data data;

  // تحويل SuccessModel إلى JSON
  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'statusCode': statusCode,
      'succeeded': succeeded,
      'data': data.toJson(),
    };
  }

  // إنشاء SuccessModel من JSON
  factory SuccessModel.fromJson(Map<String, dynamic> json) {
    return SuccessModel(
      message: json['message'] ?? '',
      statusCode: json['statusCode'] ?? 0,
      succeeded: json['succeeded'] ?? false,
      data:
          json['data'] != null
              ? Data.fromJson(json['data'])
              : Data.empty(), // ✅ تجنب تمرير null
    );
  }

  SuccessModel({
    required this.message,
    required this.statusCode,
    required this.succeeded,
    required this.data,
  });
}

class Data {
  final String message;
  final bool isAuthenticated;
  final String accessToken;
  final String accessTokenExpiresAt;

  Data({
    required this.message,
    required this.isAuthenticated,
    required this.accessToken,
    required this.accessTokenExpiresAt,
  });

  // كائن افتراضي لتجنب الأخطاء عند تمرير بيانات فارغة
  factory Data.empty() {
    return Data(
      message: '',
      isAuthenticated: false,
      accessToken: '',
      accessTokenExpiresAt: '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'isAuthenticated': isAuthenticated,
      'accessToken': accessToken,
      'accessTokenExpiresAt': accessTokenExpiresAt,
    };
  }

  // إنشاء Data من JSON
  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      message: json['message'] ?? '',
      isAuthenticated: json['isAuthenticated'] ?? false,
      accessToken: json['accessToken'] ?? '',
      accessTokenExpiresAt: json['accessTokenExpiresAt'] ?? '',
    );
  }
}
