// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_api.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserWithAvatar> _$userWithAvatarSerializer =
    new _$UserWithAvatarSerializer();
Serializer<Course> _$courseSerializer = new _$CourseSerializer();
Serializer<GetCourseResponseBody> _$getCourseResponseBodySerializer =
    new _$GetCourseResponseBodySerializer();

class _$UserWithAvatarSerializer
    implements StructuredSerializer<UserWithAvatar> {
  @override
  final Iterable<Type> types = const [UserWithAvatar, _$UserWithAvatar];
  @override
  final String wireName = 'UserWithAvatar';

  @override
  Iterable<Object> serialize(Serializers serializers, UserWithAvatar object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'uuid',
      serializers.serialize(object.uuid, specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'avatarUrl',
      serializers.serialize(object.avatarUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  UserWithAvatar deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserWithAvatarBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'uuid':
          result.uuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'avatarUrl':
          result.avatarUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CourseSerializer implements StructuredSerializer<Course> {
  @override
  final Iterable<Type> types = const [Course, _$Course];
  @override
  final String wireName = 'Course';

  @override
  Iterable<Object> serialize(Serializers serializers, Course object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'uuid',
      serializers.serialize(object.uuid, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'introduction',
      serializers.serialize(object.introduction,
          specifiedType: const FullType(String)),
      'picture',
      serializers.serialize(object.picture,
          specifiedType: const FullType(String)),
      'teacher',
      serializers.serialize(object.teacher,
          specifiedType: const FullType(UserWithAvatar)),
      'video',
      serializers.serialize(object.video,
          specifiedType: const FullType(String)),
      'file',
      serializers.serialize(object.file, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Course deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CourseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'uuid':
          result.uuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'introduction':
          result.introduction = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'teacher':
          result.teacher.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserWithAvatar)) as UserWithAvatar);
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'file':
          result.file = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GetCourseResponseBodySerializer
    implements StructuredSerializer<GetCourseResponseBody> {
  @override
  final Iterable<Type> types = const [
    GetCourseResponseBody,
    _$GetCourseResponseBody
  ];
  @override
  final String wireName = 'GetCourseResponseBody';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GetCourseResponseBody object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];
    if (object.courses != null) {
      result
        ..add('courses')
        ..add(serializers.serialize(object.courses,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(Course)])));
    }
    return result;
  }

  @override
  GetCourseResponseBody deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetCourseResponseBodyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'courses':
          result.courses.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(Course)])));
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

class _$UserWithAvatar extends UserWithAvatar {
  @override
  final String uuid;
  @override
  final String username;
  @override
  final String avatarUrl;

  factory _$UserWithAvatar([void Function(UserWithAvatarBuilder) updates]) =>
      (new UserWithAvatarBuilder()..update(updates)).build();

  _$UserWithAvatar._({this.uuid, this.username, this.avatarUrl}) : super._() {
    if (uuid == null) {
      throw new BuiltValueNullFieldError('UserWithAvatar', 'uuid');
    }
    if (username == null) {
      throw new BuiltValueNullFieldError('UserWithAvatar', 'username');
    }
    if (avatarUrl == null) {
      throw new BuiltValueNullFieldError('UserWithAvatar', 'avatarUrl');
    }
  }

  @override
  UserWithAvatar rebuild(void Function(UserWithAvatarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserWithAvatarBuilder toBuilder() =>
      new UserWithAvatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserWithAvatar &&
        uuid == other.uuid &&
        username == other.username &&
        avatarUrl == other.avatarUrl;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, uuid.hashCode), username.hashCode), avatarUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserWithAvatar')
          ..add('uuid', uuid)
          ..add('username', username)
          ..add('avatarUrl', avatarUrl))
        .toString();
  }
}

class UserWithAvatarBuilder
    implements Builder<UserWithAvatar, UserWithAvatarBuilder> {
  _$UserWithAvatar _$v;

  String _uuid;

  String get uuid => _$this._uuid;

  set uuid(String uuid) => _$this._uuid = uuid;

  String _username;

  String get username => _$this._username;

  set username(String username) => _$this._username = username;

  String _avatarUrl;

  String get avatarUrl => _$this._avatarUrl;

  set avatarUrl(String avatarUrl) => _$this._avatarUrl = avatarUrl;

  UserWithAvatarBuilder();

  UserWithAvatarBuilder get _$this {
    if (_$v != null) {
      _uuid = _$v.uuid;
      _username = _$v.username;
      _avatarUrl = _$v.avatarUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserWithAvatar other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserWithAvatar;
  }

  @override
  void update(void Function(UserWithAvatarBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserWithAvatar build() {
    final _$result = _$v ??
        new _$UserWithAvatar._(
            uuid: uuid, username: username, avatarUrl: avatarUrl);
    replace(_$result);
    return _$result;
  }
}

class _$Course extends Course {
  @override
  final String uuid;
  @override
  final String name;
  @override
  final String introduction;
  @override
  final String picture;
  @override
  final UserWithAvatar teacher;
  @override
  final String video;
  @override
  final String file;

  factory _$Course([void Function(CourseBuilder) updates]) =>
      (new CourseBuilder()..update(updates)).build();

  _$Course._(
      {this.uuid,
      this.name,
      this.introduction,
      this.picture,
      this.teacher,
      this.video,
      this.file})
      : super._() {
    if (uuid == null) {
      throw new BuiltValueNullFieldError('Course', 'uuid');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Course', 'name');
    }
    if (introduction == null) {
      throw new BuiltValueNullFieldError('Course', 'introduction');
    }
    if (picture == null) {
      throw new BuiltValueNullFieldError('Course', 'picture');
    }
    if (teacher == null) {
      throw new BuiltValueNullFieldError('Course', 'teacher');
    }
    if (video == null) {
      throw new BuiltValueNullFieldError('Course', 'video');
    }
    if (file == null) {
      throw new BuiltValueNullFieldError('Course', 'file');
    }
  }

  @override
  Course rebuild(void Function(CourseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CourseBuilder toBuilder() => new CourseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Course &&
        uuid == other.uuid &&
        name == other.name &&
        introduction == other.introduction &&
        picture == other.picture &&
        teacher == other.teacher &&
        video == other.video &&
        file == other.file;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, uuid.hashCode), name.hashCode),
                        introduction.hashCode),
                    picture.hashCode),
                teacher.hashCode),
            video.hashCode),
        file.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Course')
          ..add('uuid', uuid)
          ..add('name', name)
          ..add('introduction', introduction)
          ..add('picture', picture)
          ..add('teacher', teacher)
          ..add('video', video)
          ..add('file', file))
        .toString();
  }
}

class CourseBuilder implements Builder<Course, CourseBuilder> {
  _$Course _$v;

  String _uuid;

  String get uuid => _$this._uuid;

  set uuid(String uuid) => _$this._uuid = uuid;

  String _name;

  String get name => _$this._name;

  set name(String name) => _$this._name = name;

  String _introduction;

  String get introduction => _$this._introduction;

  set introduction(String introduction) => _$this._introduction = introduction;

  String _picture;

  String get picture => _$this._picture;

  set picture(String picture) => _$this._picture = picture;

  UserWithAvatarBuilder _teacher;

  UserWithAvatarBuilder get teacher =>
      _$this._teacher ??= new UserWithAvatarBuilder();

  set teacher(UserWithAvatarBuilder teacher) => _$this._teacher = teacher;

  String _video;

  String get video => _$this._video;

  set video(String video) => _$this._video = video;

  String _file;

  String get file => _$this._file;

  set file(String file) => _$this._file = file;

  CourseBuilder();

  CourseBuilder get _$this {
    if (_$v != null) {
      _uuid = _$v.uuid;
      _name = _$v.name;
      _introduction = _$v.introduction;
      _picture = _$v.picture;
      _teacher = _$v.teacher?.toBuilder();
      _video = _$v.video;
      _file = _$v.file;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Course other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Course;
  }

  @override
  void update(void Function(CourseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Course build() {
    _$Course _$result;
    try {
      _$result = _$v ??
          new _$Course._(
              uuid: uuid,
              name: name,
              introduction: introduction,
              picture: picture,
              teacher: teacher.build(),
              video: video,
              file: file);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'teacher';
        teacher.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Course', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetCourseResponseBody extends GetCourseResponseBody {
  @override
  final BuiltMap<String, Course> courses;
  @override
  final int code;
  @override
  final String message;

  factory _$GetCourseResponseBody(
          [void Function(GetCourseResponseBodyBuilder) updates]) =>
      (new GetCourseResponseBodyBuilder()..update(updates)).build();

  _$GetCourseResponseBody._({this.courses, this.code, this.message})
      : super._() {
    if (code == null) {
      throw new BuiltValueNullFieldError('GetCourseResponseBody', 'code');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('GetCourseResponseBody', 'message');
    }
  }

  @override
  GetCourseResponseBody rebuild(
          void Function(GetCourseResponseBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCourseResponseBodyBuilder toBuilder() =>
      new GetCourseResponseBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCourseResponseBody &&
        courses == other.courses &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, courses.hashCode), code.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetCourseResponseBody')
          ..add('courses', courses)
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class GetCourseResponseBodyBuilder
    implements Builder<GetCourseResponseBody, GetCourseResponseBodyBuilder> {
  _$GetCourseResponseBody _$v;

  MapBuilder<String, Course> _courses;

  MapBuilder<String, Course> get courses =>
      _$this._courses ??= new MapBuilder<String, Course>();

  set courses(MapBuilder<String, Course> courses) => _$this._courses = courses;

  int _code;

  int get code => _$this._code;

  set code(int code) => _$this._code = code;

  String _message;

  String get message => _$this._message;

  set message(String message) => _$this._message = message;

  GetCourseResponseBodyBuilder();

  GetCourseResponseBodyBuilder get _$this {
    if (_$v != null) {
      _courses = _$v.courses?.toBuilder();
      _code = _$v.code;
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCourseResponseBody other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetCourseResponseBody;
  }

  @override
  void update(void Function(GetCourseResponseBodyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetCourseResponseBody build() {
    _$GetCourseResponseBody _$result;
    try {
      _$result = _$v ??
          new _$GetCourseResponseBody._(
              courses: _courses?.build(), code: code, message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'courses';
        _courses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetCourseResponseBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
