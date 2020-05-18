abstract class RegisterEvent {}

class SetUsername extends RegisterEvent {
  final String username;

  SetUsername(this.username);
}

class SetPassword extends RegisterEvent {
  final String password;

  SetPassword(this.password);
}

class SetRepeatedPassword extends RegisterEvent {
  final String repeatedPassword;

  SetRepeatedPassword(this.repeatedPassword);
}

class SetEmail extends RegisterEvent {
  final String email;

  SetEmail(this.email);
}

class SetRole extends RegisterEvent {
  final int role;

  SetRole(this.role);
}

class SetVerificationCode extends RegisterEvent {
  final String verificationCode;

  SetVerificationCode(this.verificationCode);
}
