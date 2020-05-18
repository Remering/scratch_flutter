
import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:scratch_flutter/api/built_value_converter.dart';
import 'package:scratch_flutter/api/jwt_auth_header_interceptor.dart';
import 'package:scratch_flutter/constants.dart';
import 'package:scratch_flutter/pojo/profile_api.dart';

part 'profile_api.chopper.dart';

@ChopperApi(baseUrl: "/plarform/user")
abstract class ProfileApiService extends ChopperService {

  @Get(path: "/getProfile")
  Future<Response<GetProfileResponseBody>> getProfile(@Header("Authorization")String token);

  @Post(path: "/updateProfile")
  @multipart
  Future<Response<UpdateProfileResponseBody>> updateProfile(
      @Header("Authorization") String token,
      @PartFile("avatar") File avatar);


  static ProfileApiService create() {
    final client = ChopperClient(
      baseUrl: BASE_URL,
      services: [
        _$ProfileApiService(),
      ],
      converter: BuiltValueConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
        JwtAuthHeaderInterceptor(),
      ]

    );
    return _$ProfileApiService(client);
  }

}



