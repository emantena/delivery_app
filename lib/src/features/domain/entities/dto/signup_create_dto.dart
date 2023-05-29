class SignupCreateDto {
  final String? username;
  final String email;
  final String password;
  final String? phone;
  final String? date;

  SignupCreateDto({
    required this.username,
    required this.email,
    required this.password,
    required this.phone,
    required this.date,
  });
}
