import 'package:chopper/chopper.dart';
import 'package:scratch_flutter/api/built_value_converter.dart';
import 'package:scratch_flutter/api/jwt_auth_header_interceptor.dart';
import 'package:scratch_flutter/constants.dart';
import 'package:scratch_flutter/pojo/account_api.dart';

part 'account_api.chopper.dart';

@ChopperApi(baseUrl: "/plarform/user")
abstract class AccountApiService extends ChopperService {

  @Post(path: "/register")
  Future<Response<RegisterResponseBody>> register(@Body() RegisterRequestBody requestBody);


  @Post(path: "/login")
  Future<Response<LoginResponseBody>> login(@Body() LoginRequestBody requestBody);

  @Get(path: "/logout")
  Future<Response<LogoutResponseBody>> logout(@Header("Authorization") String token);

  static AccountApiService create() {
    final client = ChopperClient(
      baseUrl: BASE_URL,
      services: [
        _$AccountApiService(),
      ],
      converter: BuiltValueConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
        JwtAuthHeaderInterceptor(),
      ]

    );
    return _$AccountApiService(client);
  }

}



