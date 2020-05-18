import 'package:bloc/bloc.dart';
import 'package:scratch_flutter/api/service/profile_api.dart';

class ProfileApiBloc extends Bloc<dynamic, ProfileApiService> {
  @override
  get initialState => ProfileApiService.create();

  @override
  Stream<ProfileApiService> mapEventToState(event) {
    // TODO: implement mapEventToState
    return null;
  }
}
