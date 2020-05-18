import 'package:bloc/bloc.dart';
import 'package:scratch_flutter/api/service/question_api.dart';

class QuestionApiBloc extends Bloc<Object, QuestionApiService> {
  @override
  get initialState => QuestionApiService.create();

  @override
  Stream<QuestionApiService> mapEventToState(Object event) => null;
}
