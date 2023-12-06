// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seat_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeatGroupImpl _$$SeatGroupImplFromJson(Map<String, dynamic> json) =>
    _$SeatGroupImpl(
      groupId: json['groupId'] as String,
      row: json['row'] as int,
      column: json['column'] as int,
      seatCount: json['seatCount'] as int,
      seatOrientation:
          $enumDecode(_$SeatOrientationEnumMap, json['seatOrientation']),
      seats: (json['seats'] as List<dynamic>)
          .map((e) => Seat.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SeatGroupImplToJson(_$SeatGroupImpl instance) =>
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

_$SeatImpl _$$SeatImplFromJson(Map<String, dynamic> json) => _$SeatImpl(
      seatId: json['seatId'] as String,
      isSeated: json['isSeated'] as bool? ?? false,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$SeatImplToJson(_$SeatImpl instance) =>
    <String, dynamic>{
      'seatId': instance.seatId,
      'isSeated': instance.isSeated,
      'userId': instance.userId,
    };
