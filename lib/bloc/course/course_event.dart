import 'package:scratch_flutter/pojo/course_api.dart';

abstract class CourseEvent {}

class SetCourses extends CourseEvent {
  final Map<String, Course> courses;

  SetCourses(this.courses);
}

class AddCourse extends CourseEvent {
  final Course course;

  AddCourse(this.course);
}

class DeleteCourse extends CourseEvent {
  final String uuid;

  DeleteCourse(this.uuid);
}
