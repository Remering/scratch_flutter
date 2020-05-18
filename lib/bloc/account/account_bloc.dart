import 'package:bloc/bloc.dart';
import 'package:scratch_flutter/bloc/account/account_event.dart';
import 'package:scratch_flutter/bloc/account/account_state.dart';
import 'package:scratch_flutter/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

export 'account_event.dart';
export 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  @override
  AccountState get initialState => AccountState.initial();

  @override
  Stream<AccountState> mapEventToState(AccountEvent event) async* {
    if (event is SetProfile) {
      yield this.currentState..profile = event.profile;
    } else if (event is SetToken) {
      yield this.currentState..token = event.token;
      final response = await event.api.getProfile(event.token);
      if (response.body.code == SUCCESS) {
        yield this.currentState..profile = response.body.profile;
      }
    } else if (event is Logout) {
      final response = await event.api.logout(currentState.token);
      if (response.body.code == SUCCESS) {
        final preference = await SharedPreferences.getInstance();
        preference.remove(JWT_KEY);
        yield this.initialState;
      }
    }
  }
}