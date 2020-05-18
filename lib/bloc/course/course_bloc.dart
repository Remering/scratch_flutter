import 'package:bloc/bloc.dart';

import 'course_event.dart';
import 'course_state.dart';

export 'course_event.dart';
export 'course_state.dart';

class CourseBloc extends Bloc<CourseEvent, CourseState> {
  @override
  CourseState get initialState => CourseState.initial();

  @override
  Stream<CourseState> mapEventToState(CourseEvent event) async* {
    if (event is SetCourses) {
      currentState.courses.clear();
      currentState.courses.addAll(event.courses);
      yield this.currentState;
    } else if (event is AddCourse) {
      final course = event.course;
      currentState.courses[course.uuid] = course;
      yield this.currentState;
    } else if (event is DeleteCourse) {
      currentState.courses.remove(event.uuid);
      yield this.currentState;
    }
  }
}
