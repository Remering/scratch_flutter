import 'package:bloc/bloc.dart';
import 'package:scratch_flutter/bloc/login/login_event.dart';
import 'package:scratch_flutter/bloc/login/login_state.dart';

export 'login_event.dart';
export 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  @override
  LoginState get initialState => LoginState.initial();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is SetAccount) {
      yield this.currentState..account = event.account;
    } else if (event is SetPassword) {
      yield this.currentState..password = event.password;
    }
  }
}
