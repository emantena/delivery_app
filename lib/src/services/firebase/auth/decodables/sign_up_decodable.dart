class SignUpDecodable {
  String? kind;
  String? idToken;
  String? email;
  String? refreshToken;
  String? expiresIn;
  String? localId;

  SignUpDecodable(
      {this.kind,
      this.idToken,
      this.email,
      this.refreshToken,
      this.expiresIn,
      this.localId});

  SignUpDecodable.fromJson(Map<String, dynamic> json) {
    if (json["kind"] is String) {
      kind = json["kind"];
    }
    if (json["idToken"] is String) {
      idToken = json["idToken"];
    }
    if (json["email"] is String) {
      email = json["email"];
    }
    if (json["refreshToken"] is String) {
      refreshToken = json["refreshToken"];
    }
    if (json["expiresIn"] is String) {
      expiresIn = json["expiresIn"];
    }
    if (json["localId"] is String) {
      localId = json["localId"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["kind"] = kind;
    _data["idToken"] = idToken;
    _data["email"] = email;
    _data["refreshToken"] = refreshToken;
    _data["expiresIn"] = expiresIn;
    _data["localId"] = localId;
    return _data;
  }
}
