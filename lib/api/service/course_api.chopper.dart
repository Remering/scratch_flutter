// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$CourseApiService extends CourseApiService {
  _$CourseApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = CourseApiService;

  @override
  Future<Response<GetCourseResponseBody>> getCourses() {
    final $url = '/plarform/teacher/getCourses';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<GetCourseResponseBody, GetCourseResponseBody>($request);
  }
}
