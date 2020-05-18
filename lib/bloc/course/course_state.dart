import 'package:scratch_flutter/pojo/course_api.dart';

class CourseState {
  final Map<String, Course> courses;

  CourseState._(this.courses);

  factory CourseState.initial() {
    return CourseState._(Map());
  }
}
