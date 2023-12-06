// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seating_chart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeatingChartImpl _$$SeatingChartImplFromJson(Map<String, dynamic> json) =>
    _$SeatingChartImpl(
      title: json['title'] as String,
      seats: (json['seats'] as List<dynamic>)
          .map((e) => SeatGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
      dAt: json['dAt'] == null
          ? const UnionTimestamp.serverTimestamp()
          : unionTimestampConverter.fromJson(json['dAt'] as Object),
    );

Map<String, dynamic> _$$SeatingChartImplToJson(_$SeatingChartImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'seats': instance.seats.map((e) => e.toJson()).toList(),
      'dAt': unionTimestampConverter.toJson(instance.dAt),
    };
