// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_api.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RegisterRequestBody> _$registerRequestBodySerializer =
    new _$RegisterRequestBodySerializer();
Serializer<RegisterResponseBody> _$registerResponseBodySerializer =
    new _$RegisterResponseBodySerializer();
Serializer<LoginRequestBody> _$loginRequestBodySerializer =
    new _$LoginRequestBodySerializer();
Serializer<LoginResponseBody> _$loginResponseBodySerializer =
    new _$LoginResponseBodySerializer();
Serializer<LogoutResponseBody> _$logoutResponseBodySerializer =
    new _$LogoutResponseBodySerializer();

class _$RegisterRequestBodySerializer
    implements StructuredSerializer<RegisterRequestBody> {
  @override
  final Iterable<Type> types = const [
    RegisterRequestBody,
    _$RegisterRequestBody
  ];
  @override
  final String wireName = 'RegisterRequestBody';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RegisterRequestBody object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'account',
      serializers.serialize(object.account,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      'repeatedPassword',
      serializers.serialize(object.repeatedPassword,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'verificationCode',
      serializers.serialize(object.verificationCode,
          specifiedType: const FullType(String)),
      'role',
      serializers.serialize(object.role, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  RegisterRequestBody deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegisterRequestBodyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'account':
          result.account = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repeatedPassword':
          result.repeatedPassword = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'verificationCode':
          result.verificationCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$RegisterResponseBodySerializer
    implements StructuredSerializer<RegisterResponseBody> {
  @override
  final Iterable<Type> types = const [
    RegisterResponseBody,
    _$RegisterResponseBody
  ];
  @override
  final String wireName = 'RegisterResponseBody';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RegisterResponseBody object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  RegisterResponseBody deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegisterResponseBodyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
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

class _$LoginRequestBodySerializer
    implements StructuredSerializer<LoginRequestBody> {
  @override
  final Iterable<Type> types = const [LoginRequestBody, _$LoginRequestBody];
  @override
  final String wireName = 'LoginRequestBody';

  @override
  Iterable<Object> serialize(Serializers serializers, LoginRequestBody object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'account',
      serializers.serialize(object.account,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  LoginRequestBody deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginRequestBodyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'account':
          result.account = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LoginResponseBodySerializer
    implements StructuredSerializer<LoginResponseBody> {
  @override
  final Iterable<Type> types = const [LoginResponseBody, _$LoginResponseBody];
  @override
  final String wireName = 'LoginResponseBody';

  @override
  Iterable<Object> serialize(Serializers serializers, LoginResponseBody object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];
    if (object.token != null) {
      result
        ..add('token')
        ..add(serializers.serialize(object.token,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  LoginResponseBody deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginResponseBodyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$LogoutResponseBodySerializer
    implements StructuredSerializer<LogoutResponseBody> {
  @override
  final Iterable<Type> types = const [LogoutResponseBody, _$LogoutResponseBody];
  @override
  final String wireName = 'LogoutResponseBody';

  @override
  Iterable<Object> serialize(Serializers serializers, LogoutResponseBody object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  LogoutResponseBody deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LogoutResponseBodyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
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

class _$RegisterRequestBody extends RegisterRequestBody {
  @override
  final String account;
  @override
  final String password;
  @override
  final String repeatedPassword;
  @override
  final String email;
  @override
  final String verificationCode;
  @override
  final int role;

  factory _$RegisterRequestBody(
          [void Function(RegisterRequestBodyBuilder) updates]) =>
      (new RegisterRequestBodyBuilder()..update(updates)).build();

  _$RegisterRequestBody._(
      {this.account,
      this.password,
      this.repeatedPassword,
      this.email,
      this.verificationCode,
      this.role})
      : super._() {
    if (account == null) {
      throw new BuiltValueNullFieldError('RegisterRequestBody', 'account');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('RegisterRequestBody', 'password');
    }
    if (repeatedPassword == null) {
      throw new BuiltValueNullFieldError(
          'RegisterRequestBody', 'repeatedPassword');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('RegisterRequestBody', 'email');
    }
    if (verificationCode == null) {
      throw new BuiltValueNullFieldError(
          'RegisterRequestBody', 'verificationCode');
    }
    if (role == null) {
      throw new BuiltValueNullFieldError('RegisterRequestBody', 'role');
    }
  }

  @override
  RegisterRequestBody rebuild(
          void Function(RegisterRequestBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterRequestBodyBuilder toBuilder() =>
      new RegisterRequestBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterRequestBody &&
        account == other.account &&
        password == other.password &&
        repeatedPassword == other.repeatedPassword &&
        email == other.email &&
        verificationCode == other.verificationCode &&
        role == other.role;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, account.hashCode), password.hashCode),
                    repeatedPassword.hashCode),
                email.hashCode),
            verificationCode.hashCode),
        role.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RegisterRequestBody')
          ..add('account', account)
          ..add('password', password)
          ..add('repeatedPassword', repeatedPassword)
          ..add('email', email)
          ..add('verificationCode', verificationCode)
          ..add('role', role))
        .toString();
  }
}

class RegisterRequestBodyBuilder
    implements Builder<RegisterRequestBody, RegisterRequestBodyBuilder> {
  _$RegisterRequestBody _$v;

  String _account;

  String get account => _$this._account;

  set account(String account) => _$this._account = account;

  String _password;

  String get password => _$this._password;

  set password(String password) => _$this._password = password;

  String _repeatedPassword;

  String get repeatedPassword => _$this._repeatedPassword;

  set repeatedPassword(String repeatedPassword) =>
      _$this._repeatedPassword = repeatedPassword;

  String _email;

  String get email => _$this._email;

  set email(String email) => _$this._email = email;

  String _verificationCode;

  String get verificationCode => _$this._verificationCode;

  set verificationCode(String verificationCode) =>
      _$this._verificationCode = verificationCode;

  int _role;

  int get role => _$this._role;

  set role(int role) => _$this._role = role;

  RegisterRequestBodyBuilder();

  RegisterRequestBodyBuilder get _$this {
    if (_$v != null) {
      _account = _$v.account;
      _password = _$v.password;
      _repeatedPassword = _$v.repeatedPassword;
      _email = _$v.email;
      _verificationCode = _$v.verificationCode;
      _role = _$v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterRequestBody other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RegisterRequestBody;
  }

  @override
  void update(void Function(RegisterRequestBodyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RegisterRequestBody build() {
    final _$result = _$v ??
        new _$RegisterRequestBody._(
            account: account,
            password: password,
            repeatedPassword: repeatedPassword,
            email: email,
            verificationCode: verificationCode,
            role: role);
    replace(_$result);
    return _$result;
  }
}

class _$RegisterResponseBody extends RegisterResponseBody {
  @override
  final int code;
  @override
  final String message;

  factory _$RegisterResponseBody(
          [void Function(RegisterResponseBodyBuilder) updates]) =>
      (new RegisterResponseBodyBuilder()..update(updates)).build();

  _$RegisterResponseBody._({this.code, this.message}) : super._() {
    if (code == null) {
      throw new BuiltValueNullFieldError('RegisterResponseBody', 'code');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('RegisterResponseBody', 'message');
    }
  }

  @override
  RegisterResponseBody rebuild(
          void Function(RegisterResponseBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterResponseBodyBuilder toBuilder() =>
      new RegisterResponseBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterResponseBody &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, code.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RegisterResponseBody')
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class RegisterResponseBodyBuilder
    implements Builder<RegisterResponseBody, RegisterResponseBodyBuilder> {
  _$RegisterResponseBody _$v;

  int _code;

  int get code => _$this._code;

  set code(int code) => _$this._code = code;

  String _message;

  String get message => _$this._message;

  set message(String message) => _$this._message = message;

  RegisterResponseBodyBuilder();

  RegisterResponseBodyBuilder get _$this {
    if (_$v != null) {
      _code = _$v.code;
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterResponseBody other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RegisterResponseBody;
  }

  @override
  void update(void Function(RegisterResponseBodyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RegisterResponseBody build() {
    final _$result =
        _$v ?? new _$RegisterResponseBody._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

class _$LoginRequestBody extends LoginRequestBody {
  @override
  final String account;
  @override
  final String password;

  factory _$LoginRequestBody(
          [void Function(LoginRequestBodyBuilder) updates]) =>
      (new LoginRequestBodyBuilder()..update(updates)).build();

  _$LoginRequestBody._({this.account, this.password}) : super._() {
    if (account == null) {
      throw new BuiltValueNullFieldError('LoginRequestBody', 'account');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('LoginRequestBody', 'password');
    }
  }

  @override
  LoginRequestBody rebuild(void Function(LoginRequestBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginRequestBodyBuilder toBuilder() =>
      new LoginRequestBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginRequestBody &&
        account == other.account &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, account.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginRequestBody')
          ..add('account', account)
          ..add('password', password))
        .toString();
  }
}

class LoginRequestBodyBuilder
    implements Builder<LoginRequestBody, LoginRequestBodyBuilder> {
  _$LoginRequestBody _$v;

  String _account;

  String get account => _$this._account;

  set account(String account) => _$this._account = account;

  String _password;

  String get password => _$this._password;

  set password(String password) => _$this._password = password;

  LoginRequestBodyBuilder();

  LoginRequestBodyBuilder get _$this {
    if (_$v != null) {
      _account = _$v.account;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginRequestBody other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginRequestBody;
  }

  @override
  void update(void Function(LoginRequestBodyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginRequestBody build() {
    final _$result =
        _$v ?? new _$LoginRequestBody._(account: account, password: password);
    replace(_$result);
    return _$result;
  }
}

class _$LoginResponseBody extends LoginResponseBody {
  @override
  final String token;
  @override
  final int code;
  @override
  final String message;

  factory _$LoginResponseBody(
          [void Function(LoginResponseBodyBuilder) updates]) =>
      (new LoginResponseBodyBuilder()..update(updates)).build();

  _$LoginResponseBody._({this.token, this.code, this.message}) : super._() {
    if (code == null) {
      throw new BuiltValueNullFieldError('LoginResponseBody', 'code');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('LoginResponseBody', 'message');
    }
  }

  @override
  LoginResponseBody rebuild(void Function(LoginResponseBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginResponseBodyBuilder toBuilder() =>
      new LoginResponseBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginResponseBody &&
        token == other.token &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, token.hashCode), code.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginResponseBody')
          ..add('token', token)
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class LoginResponseBodyBuilder
    implements Builder<LoginResponseBody, LoginResponseBodyBuilder> {
  _$LoginResponseBody _$v;

  String _token;

  String get token => _$this._token;

  set token(String token) => _$this._token = token;

  int _code;

  int get code => _$this._code;

  set code(int code) => _$this._code = code;

  String _message;

  String get message => _$this._message;

  set message(String message) => _$this._message = message;

  LoginResponseBodyBuilder();

  LoginResponseBodyBuilder get _$this {
    if (_$v != null) {
      _token = _$v.token;
      _code = _$v.code;
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginResponseBody other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginResponseBody;
  }

  @override
  void update(void Function(LoginResponseBodyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginResponseBody build() {
    final _$result = _$v ??
        new _$LoginResponseBody._(token: token, code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

class _$LogoutResponseBody extends LogoutResponseBody {
  @override
  final int code;
  @override
  final String message;

  factory _$LogoutResponseBody(
          [void Function(LogoutResponseBodyBuilder) updates]) =>
      (new LogoutResponseBodyBuilder()..update(updates)).build();

  _$LogoutResponseBody._({this.code, this.message}) : super._() {
    if (code == null) {
      throw new BuiltValueNullFieldError('LogoutResponseBody', 'code');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('LogoutResponseBody', 'message');
    }
  }

  @override
  LogoutResponseBody rebuild(
          void Function(LogoutResponseBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogoutResponseBodyBuilder toBuilder() =>
      new LogoutResponseBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogoutResponseBody &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, code.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LogoutResponseBody')
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class LogoutResponseBodyBuilder
    implements Builder<LogoutResponseBody, LogoutResponseBodyBuilder> {
  _$LogoutResponseBody _$v;

  int _code;

  int get code => _$this._code;

  set code(int code) => _$this._code = code;

  String _message;

  String get message => _$this._message;

  set message(String message) => _$this._message = message;

  LogoutResponseBodyBuilder();

  LogoutResponseBodyBuilder get _$this {
    if (_$v != null) {
      _code = _$v.code;
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LogoutResponseBody other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LogoutResponseBody;
  }

  @override
  void update(void Function(LogoutResponseBodyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LogoutResponseBody build() {
    final _$result =
        _$v ?? new _$LogoutResponseBody._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
