import 'package:bloc/bloc.dart';
import 'package:scratch_flutter/api/service/account_api.dart';

class AccountApiBloc extends Bloc<Object, AccountApiService> {
  @override
  get initialState => AccountApiService.create();

  @override
  Stream<AccountApiService> mapEventToState(Object event) => null;
}
