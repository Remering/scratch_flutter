import 'package:scratch_flutter/api/service/account_api.dart';
import 'package:scratch_flutter/api/service/profile_api.dart';
import 'package:scratch_flutter/pojo/profile_api.dart';

abstract class AccountEvent {}

class SetProfile extends AccountEvent {
  final Profile profile;

  SetProfile(this.profile);
}

class SetToken extends AccountEvent {
  final String token;
  final ProfileApiService api;

  SetToken(this.token, this.api);
}

class Logout extends AccountEvent {
  final AccountApiService api;

  Logout(this.api);
}
