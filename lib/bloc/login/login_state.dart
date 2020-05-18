class LoginState {
  String account;
  String password;
  String token;

  LoginState._();

  factory LoginState.initial() {
    return LoginState._()
      ..account = ""
      ..password = "";
  }
}
