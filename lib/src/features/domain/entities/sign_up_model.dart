class SignUpModel {
  final String email;
  final String password;

  SignUpModel(this.email, this.password);

  Map<String, dynamic> toMap() => {
    "email": email,
    "password": password
  };
}
