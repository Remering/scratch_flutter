import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import './util/response_body.dart';

part 'account_api.g.dart';

abstract class RegisterRequestBody
    implements Built<RegisterRequestBody, RegisterRequestBodyBuilder> {
  String get account;

  String get password;

  String get repeatedPassword;

  String get email;

  String get verificationCode;

  int get role;

  RegisterRequestBody._();

  factory RegisterRequestBody([updates(RegisterRequestBodyBuilder b)]) =>
      _$RegisterRequestBody();

  static Serializer<RegisterRequestBody> get serializer =>
      _$registerRequestBodySerializer;
}

abstract class RegisterResponseBody
    implements
        ResponseBody,
        Built<RegisterResponseBody, RegisterResponseBodyBuilder> {
  RegisterResponseBody._();

  factory RegisterResponseBody([updates(RegisterResponseBodyBuilder b)]) =>
      _$RegisterResponseBody();

  static Serializer<RegisterResponseBody> get serializer =>
      _$registerResponseBodySerializer;
}

abstract class LoginRequestBody
    implements Built<LoginRequestBody, LoginRequestBodyBuilder> {
  String get account;

  String get password;

  LoginRequestBody._();

  factory LoginRequestBody([updates(LoginRequestBodyBuilder b)]) =>
      _$LoginRequestBody();

  static Serializer<LoginRequestBody> get serializer =>
      _$loginRequestBodySerializer;
}

abstract class LoginResponseBody
    implements
        ResponseBody,
        Built<LoginResponseBody, LoginResponseBodyBuilder> {
  @nullable
  String get token;

  LoginResponseBody._();

  factory LoginResponseBody([updates(LoginResponseBodyBuilder b)]) =>
      _$LoginResponseBody();

  static Serializer<LoginResponseBody> get serializer =>
      _$loginResponseBodySerializer;
}

abstract class LogoutResponseBody
    implements
        ResponseBody,
        Built<LogoutResponseBody, LogoutResponseBodyBuilder> {
  LogoutResponseBody._();

  factory LogoutResponseBody([updates(LogoutResponseBodyBuilder b)]) =>
      _$LogoutResponseBody();

  static Serializer<LogoutResponseBody> get serializer =>
      _$logoutResponseBodySerializer;
}
