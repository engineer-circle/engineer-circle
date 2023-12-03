// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_seat_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateSeatGroupImpl _$$CreateSeatGroupImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateSeatGroupImpl(
      groupId: json['groupId'] as String,
      row: json['row'] as int,
      column: json['column'] as int,
      seatCount: json['seatCount'] as int,
      seatOrientation:
          $enumDecode(_$SeatOrientationEnumMap, json['seatOrientation']),
    );

Map<String, dynamic> _$$CreateSeatGroupImplToJson(
        _$CreateSeatGroupImpl instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'row': instance.row,
      'column': instance.column,
      'seatCount': instance.seatCount,
      'seatOrientation': _$SeatOrientationEnumMap[instance.seatOrientation]!,
    };

const _$SeatOrientationEnumMap = {
  SeatOrientation.horizontal: 'horizontal',
  SeatOrientation.vertical: 'vertical',
};
