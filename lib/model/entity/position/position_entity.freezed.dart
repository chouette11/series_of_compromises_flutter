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
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  double get z => throw _privateConstructorUsedError;
  bool? get isQuestion => throw _privateConstructorUsedError;

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
  $Res call({double x, double y, double z, bool? isQuestion});
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
    Object? x = null,
    Object? y = null,
    Object? z = null,
    Object? isQuestion = freezed,
  }) {
    return _then(_value.copyWith(
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
      isQuestion: freezed == isQuestion
          ? _value.isQuestion
          : isQuestion // ignore: cast_nullable_to_non_nullable
              as bool?,
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
  $Res call({double x, double y, double z, bool? isQuestion});
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
    Object? x = null,
    Object? y = null,
    Object? z = null,
    Object? isQuestion = freezed,
  }) {
    return _then(_$_PositionEntity(
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
      isQuestion: freezed == isQuestion
          ? _value.isQuestion
          : isQuestion // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PositionEntity extends _PositionEntity {
  const _$_PositionEntity(
      {required this.x, required this.y, required this.z, this.isQuestion})
      : super._();

  factory _$_PositionEntity.fromJson(Map<String, dynamic> json) =>
      _$$_PositionEntityFromJson(json);

  @override
  final double x;
  @override
  final double y;
  @override
  final double z;
  @override
  final bool? isQuestion;

  @override
  String toString() {
    return 'PositionEntity(x: $x, y: $y, z: $z, isQuestion: $isQuestion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PositionEntity &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.z, z) || other.z == z) &&
            (identical(other.isQuestion, isQuestion) ||
                other.isQuestion == isQuestion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y, z, isQuestion);

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
      {required final double x,
      required final double y,
      required final double z,
      final bool? isQuestion}) = _$_PositionEntity;
  const _PositionEntity._() : super._();

  factory _PositionEntity.fromJson(Map<String, dynamic> json) =
      _$_PositionEntity.fromJson;

  @override
  double get x;
  @override
  double get y;
  @override
  double get z;
  @override
  bool? get isQuestion;
  @override
  @JsonKey(ignore: true)
  _$$_PositionEntityCopyWith<_$_PositionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
