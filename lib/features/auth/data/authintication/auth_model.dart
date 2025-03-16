class AuthModel {
  final String username;
  final String password;

  AuthModel({required this.username, required this.password});

  // Method to convert AuthModel object to JSON
  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
    };
  }

  // Method to create AuthModel object from JSON
  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      username: json['username'],
      password: json['password'],
    );
  }
}