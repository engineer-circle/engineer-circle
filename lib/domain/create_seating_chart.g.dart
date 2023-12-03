// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_seating_chart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateSeatingChartImpl _$$CreateSeatingChartImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateSeatingChartImpl(
      title: json['title'] as String,
      seats: (json['seats'] as List<dynamic>)
          .map((e) => CreateSeatGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? const UnionTimestamp.serverTimestamp()
          : unionTimestampConverter.fromJson(json['createdAt'] as Object),
    );

Map<String, dynamic> _$$CreateSeatingChartImplToJson(
        _$CreateSeatingChartImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'seats': instance.seats.map((e) => e.toJson()).toList(),
      'createdAt': unionTimestampConverter.toJson(instance.createdAt),
    };
