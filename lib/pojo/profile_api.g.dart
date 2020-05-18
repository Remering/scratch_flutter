// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_api.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Profile> _$profileSerializer = new _$ProfileSerializer();
Serializer<GetProfileResponseBody> _$getProfileResponseBodySerializer =
    new _$GetProfileResponseBodySerializer();
Serializer<UpdateProfileResponseBody> _$updateProfileResponseBodySerializer =
    new _$UpdateProfileResponseBodySerializer();

class _$ProfileSerializer implements StructuredSerializer<Profile> {
  @override
  final Iterable<Type> types = const [Profile, _$Profile];
  @override
  final String wireName = 'Profile';

  @override
  Iterable<Object> serialize(Serializers serializers, Profile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'uuid',
      serializers.serialize(object.uuid, specifiedType: const FullType(String)),
      'avatarUrl',
      serializers.serialize(object.avatarUrl,
          specifiedType: const FullType(String)),
      'role',
      serializers.serialize(object.role, specifiedType: const FullType(int)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Profile deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProfileBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uuid':
          result.uuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'avatarUrl':
          result.avatarUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GetProfileResponseBodySerializer
    implements StructuredSerializer<GetProfileResponseBody> {
  @override
  final Iterable<Type> types = const [
    GetProfileResponseBody,
    _$GetProfileResponseBody
  ];
  @override
  final String wireName = 'GetProfileResponseBody';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GetProfileResponseBody object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];
    if (object.profile != null) {
      result
        ..add('profile')
        ..add(serializers.serialize(object.profile,
            specifiedType: const FullType(Profile)));
    }
    return result;
  }

  @override
  GetProfileResponseBody deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetProfileResponseBodyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'profile':
          result.profile.replace(serializers.deserialize(value,
              specifiedType: const FullType(Profile)) as Profile);
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UpdateProfileResponseBodySerializer
    implements StructuredSerializer<UpdateProfileResponseBody> {
  @override
  final Iterable<Type> types = const [
    UpdateProfileResponseBody,
    _$UpdateProfileResponseBody
  ];
  @override
  final String wireName = 'UpdateProfileResponseBody';

  @override
  Iterable<Object> serialize(
      Serializers serializers, UpdateProfileResponseBody object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'profile',
      serializers.serialize(object.profile,
          specifiedType: const FullType(Profile)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  UpdateProfileResponseBody deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UpdateProfileResponseBodyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'profile':
          result.profile.replace(serializers.deserialize(value,
              specifiedType: const FullType(Profile)) as Profile);
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Profile extends Profile {
  @override
  final String username;
  @override
  final String uuid;
  @override
  final String avatarUrl;
  @override
  final int role;
  @override
  final String email;

  factory _$Profile([void Function(ProfileBuilder) updates]) =>
      (new ProfileBuilder()..update(updates)).build();

  _$Profile._({this.username, this.uuid, this.avatarUrl, this.role, this.email})
      : super._() {
    if (username == null) {
      throw new BuiltValueNullFieldError('Profile', 'username');
    }
    if (uuid == null) {
      throw new BuiltValueNullFieldError('Profile', 'uuid');
    }
    if (avatarUrl == null) {
      throw new BuiltValueNullFieldError('Profile', 'avatarUrl');
    }
    if (role == null) {
      throw new BuiltValueNullFieldError('Profile', 'role');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('Profile', 'email');
    }
  }

  @override
  Profile rebuild(void Function(ProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileBuilder toBuilder() => new ProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Profile &&
        username == other.username &&
        uuid == other.uuid &&
        avatarUrl == other.avatarUrl &&
        role == other.role &&
        email == other.email;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, username.hashCode), uuid.hashCode),
                avatarUrl.hashCode),
            role.hashCode),
        email.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Profile')
          ..add('username', username)
          ..add('uuid', uuid)
          ..add('avatarUrl', avatarUrl)
          ..add('role', role)
          ..add('email', email))
        .toString();
  }
}

class ProfileBuilder implements Builder<Profile, ProfileBuilder> {
  _$Profile _$v;

  String _username;

  String get username => _$this._username;

  set username(String username) => _$this._username = username;

  String _uuid;

  String get uuid => _$this._uuid;

  set uuid(String uuid) => _$this._uuid = uuid;

  String _avatarUrl;

  String get avatarUrl => _$this._avatarUrl;

  set avatarUrl(String avatarUrl) => _$this._avatarUrl = avatarUrl;

  int _role;

  int get role => _$this._role;

  set role(int role) => _$this._role = role;

  String _email;

  String get email => _$this._email;

  set email(String email) => _$this._email = email;

  ProfileBuilder();

  ProfileBuilder get _$this {
    if (_$v != null) {
      _username = _$v.username;
      _uuid = _$v.uuid;
      _avatarUrl = _$v.avatarUrl;
      _role = _$v.role;
      _email = _$v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Profile other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Profile;
  }

  @override
  void update(void Function(ProfileBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Profile build() {
    final _$result = _$v ??
        new _$Profile._(
            username: username,
            uuid: uuid,
            avatarUrl: avatarUrl,
            role: role,
            email: email);
    replace(_$result);
    return _$result;
  }
}

class _$GetProfileResponseBody extends GetProfileResponseBody {
  @override
  final Profile profile;
  @override
  final int code;
  @override
  final String message;

  factory _$GetProfileResponseBody(
          [void Function(GetProfileResponseBodyBuilder) updates]) =>
      (new GetProfileResponseBodyBuilder()..update(updates)).build();

  _$GetProfileResponseBody._({this.profile, this.code, this.message})
      : super._() {
    if (code == null) {
      throw new BuiltValueNullFieldError('GetProfileResponseBody', 'code');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('GetProfileResponseBody', 'message');
    }
  }

  @override
  GetProfileResponseBody rebuild(
          void Function(GetProfileResponseBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetProfileResponseBodyBuilder toBuilder() =>
      new GetProfileResponseBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetProfileResponseBody &&
        profile == other.profile &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, profile.hashCode), code.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetProfileResponseBody')
          ..add('profile', profile)
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class GetProfileResponseBodyBuilder
    implements Builder<GetProfileResponseBody, GetProfileResponseBodyBuilder> {
  _$GetProfileResponseBody _$v;

  ProfileBuilder _profile;

  ProfileBuilder get profile => _$this._profile ??= new ProfileBuilder();

  set profile(ProfileBuilder profile) => _$this._profile = profile;

  int _code;

  int get code => _$this._code;

  set code(int code) => _$this._code = code;

  String _message;

  String get message => _$this._message;

  set message(String message) => _$this._message = message;

  GetProfileResponseBodyBuilder();

  GetProfileResponseBodyBuilder get _$this {
    if (_$v != null) {
      _profile = _$v.profile?.toBuilder();
      _code = _$v.code;
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetProfileResponseBody other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetProfileResponseBody;
  }

  @override
  void update(void Function(GetProfileResponseBodyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetProfileResponseBody build() {
    _$GetProfileResponseBody _$result;
    try {
      _$result = _$v ??
          new _$GetProfileResponseBody._(
              profile: _profile?.build(), code: code, message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'profile';
        _profile?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetProfileResponseBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateProfileResponseBody extends UpdateProfileResponseBody {
  @override
  final Profile profile;
  @override
  final int code;
  @override
  final String message;

  factory _$UpdateProfileResponseBody(
          [void Function(UpdateProfileResponseBodyBuilder) updates]) =>
      (new UpdateProfileResponseBodyBuilder()..update(updates)).build();

  _$UpdateProfileResponseBody._({this.profile, this.code, this.message})
      : super._() {
    if (profile == null) {
      throw new BuiltValueNullFieldError(
          'UpdateProfileResponseBody', 'profile');
    }
    if (code == null) {
      throw new BuiltValueNullFieldError('UpdateProfileResponseBody', 'code');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError(
          'UpdateProfileResponseBody', 'message');
    }
  }

  @override
  UpdateProfileResponseBody rebuild(
          void Function(UpdateProfileResponseBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateProfileResponseBodyBuilder toBuilder() =>
      new UpdateProfileResponseBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateProfileResponseBody &&
        profile == other.profile &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, profile.hashCode), code.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpdateProfileResponseBody')
          ..add('profile', profile)
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class UpdateProfileResponseBodyBuilder
    implements
        Builder<UpdateProfileResponseBody, UpdateProfileResponseBodyBuilder> {
  _$UpdateProfileResponseBody _$v;

  ProfileBuilder _profile;

  ProfileBuilder get profile => _$this._profile ??= new ProfileBuilder();

  set profile(ProfileBuilder profile) => _$this._profile = profile;

  int _code;

  int get code => _$this._code;

  set code(int code) => _$this._code = code;

  String _message;

  String get message => _$this._message;

  set message(String message) => _$this._message = message;

  UpdateProfileResponseBodyBuilder();

  UpdateProfileResponseBodyBuilder get _$this {
    if (_$v != null) {
      _profile = _$v.profile?.toBuilder();
      _code = _$v.code;
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateProfileResponseBody other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UpdateProfileResponseBody;
  }

  @override
  void update(void Function(UpdateProfileResponseBodyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdateProfileResponseBody build() {
    _$UpdateProfileResponseBody _$result;
    try {
      _$result = _$v ??
          new _$UpdateProfileResponseBody._(
              profile: profile.build(), code: code, message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'profile';
        profile.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UpdateProfileResponseBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
