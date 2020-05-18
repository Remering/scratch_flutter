import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:scratch_flutter/pojo/util/response_body.dart';

part 'course_api.g.dart';

abstract class UserWithAvatar
    implements Built<UserWithAvatar, UserWithAvatarBuilder> {
  String get uuid;

  String get username;

  String get avatarUrl;

  UserWithAvatar._();

  factory UserWithAvatar([updates(UserWithAvatarBuilder b)]) =>
      _$UserWithAvatar();

  static Serializer<UserWithAvatar> get serializer =>
      _$userWithAvatarSerializer;
}

abstract class Course implements Built<Course, CourseBuilder> {
  String get uuid;

  String get name;

  String get introduction;

  String get picture;

  UserWithAvatar get teacher;

  String get video;

  String get file;

  Course._();

  factory Course([updates(CourseBuilder b)]) => _$Course();

  static Serializer<Course> get serializer => _$courseSerializer;
}

abstract class GetCourseResponseBody
    implements
        ResponseBody,
        Built<GetCourseResponseBody, GetCourseResponseBodyBuilder> {
  @nullable
  BuiltMap<String, Course> get courses;

  GetCourseResponseBody._();

  factory GetCourseResponseBody([updates(GetCourseResponseBodyBuilder b)]) =>
      _$GetCourseResponseBody();

  static Serializer<GetCourseResponseBody> get serializer =>
      _$getCourseResponseBodySerializer;
}
