// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_api.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Question> _$questionSerializer = new _$QuestionSerializer();
Serializer<GetQuestionRequestBody> _$getQuestionRequestBodySerializer =
    new _$GetQuestionRequestBodySerializer();
Serializer<GetQuestionsResponseBody> _$getQuestionsResponseBodySerializer =
    new _$GetQuestionsResponseBodySerializer();

class _$QuestionSerializer implements StructuredSerializer<Question> {
  @override
  final Iterable<Type> types = const [Question, _$Question];
  @override
  final String wireName = 'Question';

  @override
  Iterable<Object> serialize(Serializers serializers, Question object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'uuid',
      serializers.serialize(object.uuid, specifiedType: const FullType(String)),
      'course',
      serializers.serialize(object.course,
          specifiedType: const FullType(String)),
      'issuer',
      serializers.serialize(object.issuer,
          specifiedType: const FullType(UserWithAvatar)),
      'issueAt',
      serializers.serialize(object.issueAt, specifiedType: const FullType(int)),
      'answerAt',
      serializers.serialize(object.answerAt,
          specifiedType: const FullType(int)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'answer',
      serializers.serialize(object.answer,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Question deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuestionBuilder();

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
        case 'course':
          result.course = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issuer':
          result.issuer.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserWithAvatar)) as UserWithAvatar);
          break;
        case 'issueAt':
          result.issueAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'answerAt':
          result.answerAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'answer':
          result.answer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GetQuestionRequestBodySerializer
    implements StructuredSerializer<GetQuestionRequestBody> {
  @override
  final Iterable<Type> types = const [
    GetQuestionRequestBody,
    _$GetQuestionRequestBody
  ];
  @override
  final String wireName = 'GetQuestionRequestBody';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GetQuestionRequestBody object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'course',
      serializers.serialize(object.course,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GetQuestionRequestBody deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetQuestionRequestBodyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'course':
          result.course = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GetQuestionsResponseBodySerializer
    implements StructuredSerializer<GetQuestionsResponseBody> {
  @override
  final Iterable<Type> types = const [
    GetQuestionsResponseBody,
    _$GetQuestionsResponseBody
  ];
  @override
  final String wireName = 'GetQuestionsResponseBody';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GetQuestionsResponseBody object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];
    if (object.questions != null) {
      result
        ..add('questions')
        ..add(serializers.serialize(object.questions,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(Question)])));
    }
    return result;
  }

  @override
  GetQuestionsResponseBody deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetQuestionsResponseBodyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'questions':
          result.questions.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(Question)])));
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

class _$Question extends Question {
  @override
  final String uuid;
  @override
  final String course;
  @override
  final UserWithAvatar issuer;
  @override
  final int issueAt;
  @override
  final int answerAt;
  @override
  final String text;
  @override
  final String answer;

  factory _$Question([void Function(QuestionBuilder) updates]) =>
      (new QuestionBuilder()..update(updates)).build();

  _$Question._(
      {this.uuid,
      this.course,
      this.issuer,
      this.issueAt,
      this.answerAt,
      this.text,
      this.answer})
      : super._() {
    if (uuid == null) {
      throw new BuiltValueNullFieldError('Question', 'uuid');
    }
    if (course == null) {
      throw new BuiltValueNullFieldError('Question', 'course');
    }
    if (issuer == null) {
      throw new BuiltValueNullFieldError('Question', 'issuer');
    }
    if (issueAt == null) {
      throw new BuiltValueNullFieldError('Question', 'issueAt');
    }
    if (answerAt == null) {
      throw new BuiltValueNullFieldError('Question', 'answerAt');
    }
    if (text == null) {
      throw new BuiltValueNullFieldError('Question', 'text');
    }
    if (answer == null) {
      throw new BuiltValueNullFieldError('Question', 'answer');
    }
  }

  @override
  Question rebuild(void Function(QuestionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionBuilder toBuilder() => new QuestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Question &&
        uuid == other.uuid &&
        course == other.course &&
        issuer == other.issuer &&
        issueAt == other.issueAt &&
        answerAt == other.answerAt &&
        text == other.text &&
        answer == other.answer;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, uuid.hashCode), course.hashCode),
                        issuer.hashCode),
                    issueAt.hashCode),
                answerAt.hashCode),
            text.hashCode),
        answer.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Question')
          ..add('uuid', uuid)
          ..add('course', course)
          ..add('issuer', issuer)
          ..add('issueAt', issueAt)
          ..add('answerAt', answerAt)
          ..add('text', text)
          ..add('answer', answer))
        .toString();
  }
}

class QuestionBuilder implements Builder<Question, QuestionBuilder> {
  _$Question _$v;

  String _uuid;

  String get uuid => _$this._uuid;

  set uuid(String uuid) => _$this._uuid = uuid;

  String _course;

  String get course => _$this._course;

  set course(String course) => _$this._course = course;

  UserWithAvatarBuilder _issuer;

  UserWithAvatarBuilder get issuer =>
      _$this._issuer ??= new UserWithAvatarBuilder();

  set issuer(UserWithAvatarBuilder issuer) => _$this._issuer = issuer;

  int _issueAt;

  int get issueAt => _$this._issueAt;

  set issueAt(int issueAt) => _$this._issueAt = issueAt;

  int _answerAt;

  int get answerAt => _$this._answerAt;

  set answerAt(int answerAt) => _$this._answerAt = answerAt;

  String _text;

  String get text => _$this._text;

  set text(String text) => _$this._text = text;

  String _answer;

  String get answer => _$this._answer;

  set answer(String answer) => _$this._answer = answer;

  QuestionBuilder();

  QuestionBuilder get _$this {
    if (_$v != null) {
      _uuid = _$v.uuid;
      _course = _$v.course;
      _issuer = _$v.issuer?.toBuilder();
      _issueAt = _$v.issueAt;
      _answerAt = _$v.answerAt;
      _text = _$v.text;
      _answer = _$v.answer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Question other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Question;
  }

  @override
  void update(void Function(QuestionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Question build() {
    _$Question _$result;
    try {
      _$result = _$v ??
          new _$Question._(
              uuid: uuid,
              course: course,
              issuer: issuer.build(),
              issueAt: issueAt,
              answerAt: answerAt,
              text: text,
              answer: answer);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'issuer';
        issuer.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Question', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetQuestionRequestBody extends GetQuestionRequestBody {
  @override
  final String course;

  factory _$GetQuestionRequestBody(
          [void Function(GetQuestionRequestBodyBuilder) updates]) =>
      (new GetQuestionRequestBodyBuilder()..update(updates)).build();

  _$GetQuestionRequestBody._({this.course}) : super._() {
    if (course == null) {
      throw new BuiltValueNullFieldError('GetQuestionRequestBody', 'course');
    }
  }

  @override
  GetQuestionRequestBody rebuild(
          void Function(GetQuestionRequestBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetQuestionRequestBodyBuilder toBuilder() =>
      new GetQuestionRequestBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetQuestionRequestBody && course == other.course;
  }

  @override
  int get hashCode {
    return $jf($jc(0, course.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetQuestionRequestBody')
          ..add('course', course))
        .toString();
  }
}

class GetQuestionRequestBodyBuilder
    implements Builder<GetQuestionRequestBody, GetQuestionRequestBodyBuilder> {
  _$GetQuestionRequestBody _$v;

  String _course;

  String get course => _$this._course;

  set course(String course) => _$this._course = course;

  GetQuestionRequestBodyBuilder();

  GetQuestionRequestBodyBuilder get _$this {
    if (_$v != null) {
      _course = _$v.course;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetQuestionRequestBody other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetQuestionRequestBody;
  }

  @override
  void update(void Function(GetQuestionRequestBodyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetQuestionRequestBody build() {
    final _$result = _$v ?? new _$GetQuestionRequestBody._(course: course);
    replace(_$result);
    return _$result;
  }
}

class _$GetQuestionsResponseBody extends GetQuestionsResponseBody {
  @override
  final BuiltMap<String, Question> questions;
  @override
  final int code;
  @override
  final String message;

  factory _$GetQuestionsResponseBody(
          [void Function(GetQuestionsResponseBodyBuilder) updates]) =>
      (new GetQuestionsResponseBodyBuilder()..update(updates)).build();

  _$GetQuestionsResponseBody._({this.questions, this.code, this.message})
      : super._() {
    if (code == null) {
      throw new BuiltValueNullFieldError('GetQuestionsResponseBody', 'code');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('GetQuestionsResponseBody', 'message');
    }
  }

  @override
  GetQuestionsResponseBody rebuild(
          void Function(GetQuestionsResponseBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetQuestionsResponseBodyBuilder toBuilder() =>
      new GetQuestionsResponseBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetQuestionsResponseBody &&
        questions == other.questions &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, questions.hashCode), code.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetQuestionsResponseBody')
          ..add('questions', questions)
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class GetQuestionsResponseBodyBuilder
    implements
        Builder<GetQuestionsResponseBody, GetQuestionsResponseBodyBuilder> {
  _$GetQuestionsResponseBody _$v;

  MapBuilder<String, Question> _questions;

  MapBuilder<String, Question> get questions =>
      _$this._questions ??= new MapBuilder<String, Question>();

  set questions(MapBuilder<String, Question> questions) =>
      _$this._questions = questions;

  int _code;

  int get code => _$this._code;

  set code(int code) => _$this._code = code;

  String _message;

  String get message => _$this._message;

  set message(String message) => _$this._message = message;

  GetQuestionsResponseBodyBuilder();

  GetQuestionsResponseBodyBuilder get _$this {
    if (_$v != null) {
      _questions = _$v.questions?.toBuilder();
      _code = _$v.code;
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetQuestionsResponseBody other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetQuestionsResponseBody;
  }

  @override
  void update(void Function(GetQuestionsResponseBodyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetQuestionsResponseBody build() {
    _$GetQuestionsResponseBody _$result;
    try {
      _$result = _$v ??
          new _$GetQuestionsResponseBody._(
              questions: _questions?.build(), code: code, message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'questions';
        _questions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetQuestionsResponseBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
