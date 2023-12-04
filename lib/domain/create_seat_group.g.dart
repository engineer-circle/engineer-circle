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
      seats: (json['seats'] as List<dynamic>)
          .map((e) => CreateSeat.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CreateSeatGroupImplToJson(
        _$CreateSeatGroupImpl instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'row': instance.row,
      'column': instance.column,
      'seatCount': instance.seatCount,
      'seatOrientation': _$SeatOrientationEnumMap[instance.seatOrientation]!,
      'seats': instance.seats.map((e) => e.toJson()).toList(),
    };

const _$SeatOrientationEnumMap = {
  SeatOrientation.horizontal: 'horizontal',
  SeatOrientation.vertical: 'vertical',
};

_$CreateSeatImpl _$$CreateSeatImplFromJson(Map<String, dynamic> json) =>
    _$CreateSeatImpl(
      seatId: json['seatId'] as String,
      userId: json['userId'] as String?,
      isSeated: json['isSeated'] as bool? ?? false,
    );

Map<String, dynamic> _$$CreateSeatImplToJson(_$CreateSeatImpl instance) =>
    <String, dynamic>{
      'seatId': instance.seatId,
      'userId': instance.userId,
      'isSeated': instance.isSeated,
    };
