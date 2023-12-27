// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_seating_chart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateSeatingChartImpl _$$CreateSeatingChartImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateSeatingChartImpl(
      seatTitle: json['seatTitle'] as String,
      seatGroupList: (json['seatGroupList'] as List<dynamic>)
          .map((e) => SeatGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CreateSeatingChartImplToJson(
        _$CreateSeatingChartImpl instance) =>
    <String, dynamic>{
      'seatTitle': instance.seatTitle,
      'seatGroupList': instance.seatGroupList.map((e) => e.toJson()).toList(),
    };
