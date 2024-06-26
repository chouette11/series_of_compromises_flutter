// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageDocument _$MessageDocumentFromJson(Map<String, dynamic> json) {
  return _MessageDocument.fromJson(json);
}

/// @nodoc
mixin _$MessageDocument {
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'uid')
  String get uid => throw _privateConstructorUsedError;
  @JsonKey(name: 'isQuestion')
  bool? get isQuestion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageDocumentCopyWith<MessageDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDocumentCopyWith<$Res> {
  factory $MessageDocumentCopyWith(
          MessageDocument value, $Res Function(MessageDocument) then) =
      _$MessageDocumentCopyWithImpl<$Res, MessageDocument>;
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'uid') String uid,
      @JsonKey(name: 'isQuestion') bool? isQuestion});
}

/// @nodoc
class _$MessageDocumentCopyWithImpl<$Res, $Val extends MessageDocument>
    implements $MessageDocumentCopyWith<$Res> {
  _$MessageDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? uid = null,
    Object? isQuestion = freezed,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      isQuestion: freezed == isQuestion
          ? _value.isQuestion
          : isQuestion // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageDocumentCopyWith<$Res>
    implements $MessageDocumentCopyWith<$Res> {
  factory _$$_MessageDocumentCopyWith(
          _$_MessageDocument value, $Res Function(_$_MessageDocument) then) =
      __$$_MessageDocumentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'uid') String uid,
      @JsonKey(name: 'isQuestion') bool? isQuestion});
}

/// @nodoc
class __$$_MessageDocumentCopyWithImpl<$Res>
    extends _$MessageDocumentCopyWithImpl<$Res, _$_MessageDocument>
    implements _$$_MessageDocumentCopyWith<$Res> {
  __$$_MessageDocumentCopyWithImpl(
      _$_MessageDocument _value, $Res Function(_$_MessageDocument) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? uid = null,
    Object? isQuestion = freezed,
  }) {
    return _then(_$_MessageDocument(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      isQuestion: freezed == isQuestion
          ? _value.isQuestion
          : isQuestion // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageDocument extends _MessageDocument {
  const _$_MessageDocument(
      {@JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'uid') required this.uid,
      @JsonKey(name: 'isQuestion') this.isQuestion})
      : super._();

  factory _$_MessageDocument.fromJson(Map<String, dynamic> json) =>
      _$$_MessageDocumentFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'uid')
  final String uid;
  @override
  @JsonKey(name: 'isQuestion')
  final bool? isQuestion;

  @override
  String toString() {
    return 'MessageDocument(content: $content, uid: $uid, isQuestion: $isQuestion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageDocument &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.isQuestion, isQuestion) ||
                other.isQuestion == isQuestion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, uid, isQuestion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageDocumentCopyWith<_$_MessageDocument> get copyWith =>
      __$$_MessageDocumentCopyWithImpl<_$_MessageDocument>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageDocumentToJson(
      this,
    );
  }
}

abstract class _MessageDocument extends MessageDocument {
  const factory _MessageDocument(
          {@JsonKey(name: 'content') required final String content,
          @JsonKey(name: 'uid') required final String uid,
          @JsonKey(name: 'isQuestion') final bool? isQuestion}) =
      _$_MessageDocument;
  const _MessageDocument._() : super._();

  factory _MessageDocument.fromJson(Map<String, dynamic> json) =
      _$_MessageDocument.fromJson;

  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(name: 'uid')
  String get uid;
  @override
  @JsonKey(name: 'isQuestion')
  bool? get isQuestion;
  @override
  @JsonKey(ignore: true)
  _$$_MessageDocumentCopyWith<_$_MessageDocument> get copyWith =>
      throw _privateConstructorUsedError;
}
