// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ProfileApiService extends ProfileApiService {
  _$ProfileApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ProfileApiService;

  @override
  Future<Response<GetProfileResponseBody>> getProfile(String token) {
    final $url = '/plarform/user/getProfile';
    final $headers = {'Authorization': token};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client
        .send<GetProfileResponseBody, GetProfileResponseBody>($request);
  }

  @override
  Future<Response<UpdateProfileResponseBody>> updateProfile(
      String token, File avatar) {
    final $url = '/plarform/user/updateProfile';
    final $headers = {'Authorization': token};
    final $parts = <PartValue>[PartValueFile<File>('avatar', avatar)];
    final $request = Request('POST', $url, client.baseUrl,
        parts: $parts, multipart: true, headers: $headers);
    return client
        .send<UpdateProfileResponseBody, UpdateProfileResponseBody>($request);
  }
}
