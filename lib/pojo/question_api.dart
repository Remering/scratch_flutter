import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:scratch_flutter/pojo/course_api.dart';

import './util/response_body.dart';

part 'question_api.g.dart';

abstract class Question implements Built<Question, QuestionBuilder> {
  String get uuid;

  String get course;

  UserWithAvatar get issuer;

  int get issueAt;

  int get answerAt;

  String get text;

  String get answer;

  Question._();

  factory Question([updates(QuestionBuilder b)]) => _$Question();

  static Serializer<Question> get serializer => _$questionSerializer;
}

abstract class GetQuestionRequestBody
    implements Built<GetQuestionRequestBody, GetQuestionRequestBodyBuilder> {
  String get course;

  GetQuestionRequestBody._();

  factory GetQuestionRequestBody([updates(GetQuestionRequestBodyBuilder b)]) =>
      _$GetQuestionRequestBody();

  static Serializer<GetQuestionRequestBody> get serializer =>
      _$getQuestionRequestBodySerializer;
}

abstract class GetQuestionsResponseBody
    implements
        ResponseBody,
        Built<GetQuestionsResponseBody, GetQuestionsResponseBodyBuilder> {
  @nullable
  BuiltMap<String, Question> get questions;

  GetQuestionsResponseBody._();

  factory GetQuestionsResponseBody(
          [updates(GetQuestionsResponseBodyBuilder b)]) =>
      _$GetQuestionsResponseBody();

  static Serializer<GetQuestionsResponseBody> get serializer =>
      _$getQuestionsResponseBodySerializer;
}
