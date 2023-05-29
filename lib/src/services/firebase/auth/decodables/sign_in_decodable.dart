class SignInDecodable {
  String? kind;
  String? localId;
  String? email;
  String? displayName;
  String? idToken;
  bool? registered;
  String? refreshToken;
  String? expiresIn;

  SignInDecodable(
      {this.kind,
      this.localId,
      this.email,
      this.displayName,
      this.idToken,
      this.registered,
      this.refreshToken,
      this.expiresIn});

  SignInDecodable.fromJson(Map<String, dynamic> json) {
    if (json["kind"] is String) {
      kind = json["kind"];
    }
    if (json["localId"] is String) {
      localId = json["localId"];
    }
    if (json["email"] is String) {
      email = json["email"];
    }
    if (json["displayName"] is String) {
      displayName = json["displayName"];
    }
    if (json["idToken"] is String) {
      idToken = json["idToken"];
    }
    if (json["registered"] is bool) {
      registered = json["registered"];
    }
    if (json["refreshToken"] is String) {
      refreshToken = json["refreshToken"];
    }
    if (json["expiresIn"] is String) {
      expiresIn = json["expiresIn"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["kind"] = kind;
    data["localId"] = localId;
    data["email"] = email;
    data["displayName"] = displayName;
    data["idToken"] = idToken;
    data["registered"] = registered;
    data["refreshToken"] = refreshToken;
    data["expiresIn"] = expiresIn;
    return data;
  }
}
