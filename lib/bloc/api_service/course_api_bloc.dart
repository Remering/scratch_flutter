import 'package:bloc/bloc.dart';
import 'package:scratch_flutter/api/service/course_api.dart';

class CourseApiBloc extends Bloc<Object, CourseApiService> {
  @override
  get initialState => CourseApiService.create();

  @override
  Stream<CourseApiService> mapEventToState(Object event) => null;
}
