import 'package:chopper/chopper.dart';
import 'package:scratch_flutter/api/built_value_converter.dart';
import 'package:scratch_flutter/api/jwt_auth_header_interceptor.dart';
import 'package:scratch_flutter/constants.dart';
import 'package:scratch_flutter/pojo/course_api.dart';

part 'course_api.chopper.dart';

@ChopperApi(baseUrl: "/plarform/teacher")
abstract class CourseApiService extends ChopperService {
  @Get(path: "/getCourses")
  Future<Response<GetCourseResponseBody>> getCourses();

  static CourseApiService create() {
    final client = ChopperClient(
      baseUrl: BASE_URL,
      services: [
        _$CourseApiService(),
      ],
      converter: BuiltValueConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
        JwtAuthHeaderInterceptor(),
      ]

    );
    return _$CourseApiService(client);
  }

}



