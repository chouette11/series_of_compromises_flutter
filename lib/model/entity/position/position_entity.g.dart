// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PositionEntity _$$_PositionEntityFromJson(Map<String, dynamic> json) =>
    _$_PositionEntity(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      z: (json['z'] as num).toDouble(),
      isQuestion: json['isQuestion'] as bool?,
    );

Map<String, dynamic> _$$_PositionEntityToJson(_$_PositionEntity instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'z': instance.z,
      'isQuestion': instance.isQuestion,
    };
