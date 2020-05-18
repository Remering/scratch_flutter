import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:scratch_flutter/pojo/account_api.dart';
import 'package:scratch_flutter/pojo/course_api.dart';
import 'package:scratch_flutter/pojo/profile_api.dart';
import 'package:scratch_flutter/pojo/question_api.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  RegisterRequestBody,
  RegisterResponseBody,
  LoginRequestBody,
  LoginResponseBody,
  LogoutResponseBody,
  Profile,
  GetProfileResponseBody,
  UpdateProfileResponseBody,
  UserWithAvatar,
  Course,
  GetCourseResponseBody,
  Question,
  GetQuestionRequestBody,
  GetQuestionsResponseBody,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
