// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Course.serializer)
      ..add(GetCourseResponseBody.serializer)
      ..add(GetProfileResponseBody.serializer)
      ..add(GetQuestionRequestBody.serializer)
      ..add(GetQuestionsResponseBody.serializer)
      ..add(LoginRequestBody.serializer)
      ..add(LoginResponseBody.serializer)
      ..add(LogoutResponseBody.serializer)
      ..add(Profile.serializer)
      ..add(Question.serializer)
      ..add(RegisterRequestBody.serializer)
      ..add(RegisterResponseBody.serializer)
      ..add(UpdateProfileResponseBody.serializer)
      ..add(UserWithAvatar.serializer)
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(Course)]),
          () => new MapBuilder<String, Course>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(Question)]),
          () => new MapBuilder<String, Question>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
