class CreateUserResponseDto {
  String? billingAddress;
  String? dateOfBirth;
  String? email;
  String? idToken;
  String? localId;
  String? phone;
  String? photo;
  String? role;
  String? shippingAddress;
  String? startDate;
  String? username;

  CreateUserResponseDto(
      {this.billingAddress,
      this.dateOfBirth,
      this.email,
      this.idToken,
      this.localId,
      this.phone,
      this.photo,
      this.role,
      this.shippingAddress,
      this.startDate,
      this.username});

  CreateUserResponseDto.fromJson(Map<String, dynamic> json) {
    billingAddress = json['billingAddress'];
    dateOfBirth = json['dateOfBirth'];
    email = json['email'];
    idToken = json['idToken'];
    localId = json['localId'];
    phone = json['phone'];
    photo = json['photo'];
    role = json['role'];
    shippingAddress = json['shippingAddress'];
    startDate = json['startDate'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['billingAddress'] = billingAddress;
    data['dateOfBirth'] = dateOfBirth;
    data['email'] = email;
    data['idToken'] = idToken;
    data['localId'] = localId;
    data['phone'] = phone;
    data['photo'] = photo;
    data['role'] = role;
    data['shippingAddress'] = shippingAddress;
    data['startDate'] = startDate;
    data['username'] = username;
    return data;
  }
}
