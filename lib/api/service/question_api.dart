import 'package:chopper/chopper.dart';
import 'package:scratch_flutter/api/built_value_converter.dart';
import 'package:scratch_flutter/api/jwt_auth_header_interceptor.dart';
import 'package:scratch_flutter/constants.dart';
import 'package:scratch_flutter/pojo/question_api.dart';
import 'package:built_collection/built_collection.dart';
part 'question_api.chopper.dart';

@ChopperApi(baseUrl: "/plarform/question")
abstract class QuestionApiService extends ChopperService {

  Future<Response<GetQuestionsResponseBody>> getQuestions(String course) {
    final builder = GetQuestionRequestBodyBuilder();
    builder.course = course;
    return getQuestionsImp(builder.build());
  }

  @Post(path: "/get")
  Future<Response<GetQuestionsResponseBody>> getQuestionsImp(@Body() GetQuestionRequestBody body);

  static QuestionApiService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [
          _$QuestionApiService(),
        ],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          JwtAuthHeaderInterceptor(),
        ]

    );
    return _$QuestionApiService(client);
  }

}



