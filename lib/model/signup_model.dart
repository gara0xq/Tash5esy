class SignupModel {
  String fullName;
  String email;
  String nationalId;
  String phoneNumber;
  String password;
  String confirmPassword;

  SignupModel({
    required this.fullName,
    required this.email,
    required this.nationalId,
    required this.phoneNumber,
    required this.password,
    required this.confirmPassword,
  });
}
