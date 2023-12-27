// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seating_chart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeatingChartImpl _$$SeatingChartImplFromJson(Map<String, dynamic> json) =>
    _$SeatingChartImpl(
      docId: json['docId'] as String,
      seatTitle: json['seatTitle'] as String,
      seatGroupList: (json['seatGroupList'] as List<dynamic>)
          .map((e) => SeatGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? const UnionTimestamp.serverTimestamp()
          : unionTimestampConverter.fromJson(json['createdAt'] as Object),
    );

Map<String, dynamic> _$$SeatingChartImplToJson(_$SeatingChartImpl instance) =>
    <String, dynamic>{
      'docId': instance.docId,
      'seatTitle': instance.seatTitle,
      'seatGroupList': instance.seatGroupList.map((e) => e.toJson()).toList(),
      'createdAt': unionTimestampConverter.toJson(instance.createdAt),
    };
