import 'package:freezed_annotation/freezed_annotation.dart';

part 'position_entity.freezed.dart';
part 'position_entity.g.dart';

@freezed
class PositionEntity with _$PositionEntity {
  const PositionEntity._();

  const factory PositionEntity({
    required String id,
    required double x,
    required double y,
    required double z,
    required String typeText,
    required bool isVisible,
  }) = _PositionEntity;

  factory PositionEntity.fromJson(Map<String, dynamic> json) =>
      _$PositionEntityFromJson(json);
}
