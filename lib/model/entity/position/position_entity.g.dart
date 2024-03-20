// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PositionEntity _$$_PositionEntityFromJson(Map<String, dynamic> json) =>
    _$_PositionEntity(
      id: json['id'] as String,
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      z: (json['z'] as num).toDouble(),
      typeText: json['typeText'] as String,
      isVisible: json['isVisible'] as bool,
      sender: json['sender'] as String,
    );

Map<String, dynamic> _$$_PositionEntityToJson(_$_PositionEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'x': instance.x,
      'y': instance.y,
      'z': instance.z,
      'typeText': instance.typeText,
      'isVisible': instance.isVisible,
      'sender': instance.sender,
    };
