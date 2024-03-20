// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'position_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PositionEntity _$PositionEntityFromJson(Map<String, dynamic> json) {
  return _PositionEntity.fromJson(json);
}

/// @nodoc
mixin _$PositionEntity {
  String get id => throw _privateConstructorUsedError;
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  double get z => throw _privateConstructorUsedError;
  String get typeText => throw _privateConstructorUsedError;
  bool get isVisible => throw _privateConstructorUsedError;
  String get sender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PositionEntityCopyWith<PositionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionEntityCopyWith<$Res> {
  factory $PositionEntityCopyWith(
          PositionEntity value, $Res Function(PositionEntity) then) =
      _$PositionEntityCopyWithImpl<$Res, PositionEntity>;
  @useResult
  $Res call(
      {String id,
      double x,
      double y,
      double z,
      String typeText,
      bool isVisible,
      String sender});
}

/// @nodoc
class _$PositionEntityCopyWithImpl<$Res, $Val extends PositionEntity>
    implements $PositionEntityCopyWith<$Res> {
  _$PositionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? x = null,
    Object? y = null,
    Object? z = null,
    Object? typeText = null,
    Object? isVisible = null,
    Object? sender = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      z: null == z
          ? _value.z
          : z // ignore: cast_nullable_to_non_nullable
              as double,
      typeText: null == typeText
          ? _value.typeText
          : typeText // ignore: cast_nullable_to_non_nullable
              as String,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PositionEntityCopyWith<$Res>
    implements $PositionEntityCopyWith<$Res> {
  factory _$$_PositionEntityCopyWith(
          _$_PositionEntity value, $Res Function(_$_PositionEntity) then) =
      __$$_PositionEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      double x,
      double y,
      double z,
      String typeText,
      bool isVisible,
      String sender});
}

/// @nodoc
class __$$_PositionEntityCopyWithImpl<$Res>
    extends _$PositionEntityCopyWithImpl<$Res, _$_PositionEntity>
    implements _$$_PositionEntityCopyWith<$Res> {
  __$$_PositionEntityCopyWithImpl(
      _$_PositionEntity _value, $Res Function(_$_PositionEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? x = null,
    Object? y = null,
    Object? z = null,
    Object? typeText = null,
    Object? isVisible = null,
    Object? sender = null,
  }) {
    return _then(_$_PositionEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      z: null == z
          ? _value.z
          : z // ignore: cast_nullable_to_non_nullable
              as double,
      typeText: null == typeText
          ? _value.typeText
          : typeText // ignore: cast_nullable_to_non_nullable
              as String,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PositionEntity extends _PositionEntity {
  const _$_PositionEntity(
      {required this.id,
      required this.x,
      required this.y,
      required this.z,
      required this.typeText,
      required this.isVisible,
      required this.sender})
      : super._();

  factory _$_PositionEntity.fromJson(Map<String, dynamic> json) =>
      _$$_PositionEntityFromJson(json);

  @override
  final String id;
  @override
  final double x;
  @override
  final double y;
  @override
  final double z;
  @override
  final String typeText;
  @override
  final bool isVisible;
  @override
  final String sender;

  @override
  String toString() {
    return 'PositionEntity(id: $id, x: $x, y: $y, z: $z, typeText: $typeText, isVisible: $isVisible, sender: $sender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PositionEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.z, z) || other.z == z) &&
            (identical(other.typeText, typeText) ||
                other.typeText == typeText) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible) &&
            (identical(other.sender, sender) || other.sender == sender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, x, y, z, typeText, isVisible, sender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PositionEntityCopyWith<_$_PositionEntity> get copyWith =>
      __$$_PositionEntityCopyWithImpl<_$_PositionEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PositionEntityToJson(
      this,
    );
  }
}

abstract class _PositionEntity extends PositionEntity {
  const factory _PositionEntity(
      {required final String id,
      required final double x,
      required final double y,
      required final double z,
      required final String typeText,
      required final bool isVisible,
      required final String sender}) = _$_PositionEntity;
  const _PositionEntity._() : super._();

  factory _PositionEntity.fromJson(Map<String, dynamic> json) =
      _$_PositionEntity.fromJson;

  @override
  String get id;
  @override
  double get x;
  @override
  double get y;
  @override
  double get z;
  @override
  String get typeText;
  @override
  bool get isVisible;
  @override
  String get sender;
  @override
  @JsonKey(ignore: true)
  _$$_PositionEntityCopyWith<_$_PositionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
