import 'package:freezed_annotation/freezed_annotation.dart';

part 'position_entity.freezed.dart';
part 'position_entity.g.dart';


@freezed
class PositionEntity with _$PositionEntity {
    const PositionEntity._();

  const factory PositionEntity({
    required double x,
    required double y,
    required double z,
  }) = _PositionEntity;

   factory PositionEntity.fromJson(Map<String, dynamic> json) =>
      _$PositionEntityFromJson(json);

}
