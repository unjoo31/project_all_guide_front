class JoinReqDTO {
  final String email;
  final String password;

  JoinReqDTO({required this.password, required this.email});

  Map<String, dynamic> toJson() => {"password": password, "email": email};
}

class LoginReqDTO {
  final String email;
  final String password;

  LoginReqDTO({required this.password, required this.email});

  Map<String, dynamic> toJson() => {"password": password, "email": email};
}
