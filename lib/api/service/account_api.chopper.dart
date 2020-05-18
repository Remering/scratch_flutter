// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$AccountApiService extends AccountApiService {
  _$AccountApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AccountApiService;

  @override
  Future<Response<RegisterResponseBody>> register(
      RegisterRequestBody requestBody) {
    final $url = '/plarform/user/register';
    final $body = requestBody;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<RegisterResponseBody, RegisterResponseBody>($request);
  }

  @override
  Future<Response<LoginResponseBody>> login(LoginRequestBody requestBody) {
    final $url = '/plarform/user/login';
    final $body = requestBody;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<LoginResponseBody, LoginResponseBody>($request);
  }

  @override
  Future<Response<LogoutResponseBody>> logout(String token) {
    final $url = '/plarform/user/logout';
    final $headers = {'Authorization': token};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<LogoutResponseBody, LogoutResponseBody>($request);
  }
}
