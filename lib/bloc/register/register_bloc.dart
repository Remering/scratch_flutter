import 'package:bloc/bloc.dart';
import 'package:scratch_flutter/bloc/register/register_event.dart';
import 'package:scratch_flutter/bloc/register/register_state.dart';

export 'package:scratch_flutter/bloc/register/register_event.dart';
export 'package:scratch_flutter/bloc/register/register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  @override
  RegisterState get initialState => RegisterState.initial();

  @override
  Stream<RegisterState> mapEventToState(RegisterEvent event) async* {
    if (event is SetUsername) {
      yield this.currentState..username = event.username;
    } else if (event is SetPassword) {
      yield this.currentState..password = event.password;
    } else if (event is SetRepeatedPassword) {
      yield this.currentState..repeatedPassword = event.repeatedPassword;
    } else if (event is SetEmail) {
      yield this.currentState..email = event.email;
    } else if (event is SetRole) {
      print('SetRole: ${event.role}');
      yield this.currentState..role = event.role;
    } else if (event is SetVerificationCode) {
      yield this.currentState..verificationCode = event.verificationCode;
    }
  }
}
