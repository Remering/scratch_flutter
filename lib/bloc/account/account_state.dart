import 'package:scratch_flutter/constants.dart';
import 'package:scratch_flutter/pojo/profile_api.dart';

class AccountState {
  Profile profile;
  String token;

  bool get isLogged => token != null;

  AccountState._();

  factory AccountState.initial() {
    final profileBuilder = ProfileBuilder()
      ..uuid = ""
      ..avatarUrl = ""
      ..email = ""
      ..username = ""
      ..role = STUDENT;

    return AccountState._()
      ..profile = profileBuilder.build()
      ..token = null;
  }
}
