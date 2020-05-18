import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {}

class SetAccount extends LoginEvent {
  final String account;

  SetAccount(this.account);

  @override
  List<Object> get props => [account];
}

class SetPassword extends LoginEvent {
  final String password;

  SetPassword(this.password);

  @override
  List<Object> get props => [password];
}

class RequestLogin extends LoginEvent {
  @override
  List<Object> get props => [];
}
