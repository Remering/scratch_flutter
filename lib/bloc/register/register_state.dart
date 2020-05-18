import 'package:scratch_flutter/constants.dart';

class RegisterState {
  String username;
  String password;
  String repeatedPassword;
  String email;
  int role;
  String verificationCode;

  RegisterState._();

  factory RegisterState.initial() => RegisterState._()
    ..username = ""
    ..password = ""
    ..repeatedPassword = ""
    ..email = ""
    ..role = STUDENT
    ..verificationCode = "";
}
