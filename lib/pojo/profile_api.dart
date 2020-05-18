import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:scratch_flutter/pojo/util/response_body.dart';

part 'profile_api.g.dart';

abstract class Profile implements Built<Profile, ProfileBuilder> {
  String get username;

  String get uuid;

  String get avatarUrl;

  int get role;

  String get email;

  Profile._();

  factory Profile([void Function(ProfileBuilder) updates]) = _$Profile;

  static Serializer<Profile> get serializer => _$profileSerializer;
}

abstract class GetProfileResponseBody
    implements
        ResponseBody,
        Built<GetProfileResponseBody, GetProfileResponseBodyBuilder> {
  @nullable
  Profile get profile;

  GetProfileResponseBody._();

  factory GetProfileResponseBody(
          [void Function(GetProfileResponseBodyBuilder) updates]) =
      _$GetProfileResponseBody;

  static Serializer<GetProfileResponseBody> get serializer =>
      _$getProfileResponseBodySerializer;
}

abstract class UpdateProfileResponseBody
    implements
        ResponseBody,
        Built<UpdateProfileResponseBody, UpdateProfileResponseBodyBuilder> {
  Profile get profile;

  UpdateProfileResponseBody._();

  factory UpdateProfileResponseBody(
          [void Function(UpdateProfileResponseBodyBuilder) updates]) =
      _$UpdateProfileResponseBody;

  static Serializer<UpdateProfileResponseBody> get serializer =>
      _$updateProfileResponseBodySerializer;
}
