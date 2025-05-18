class UserModel {
  String name;
  String password;
  String? confirmPassword;
  int? phone;
  String? email;

  UserModel({
    required this.name,
    required this.password,
    this.confirmPassword,
    this.phone,
    this.email,
  });
}
