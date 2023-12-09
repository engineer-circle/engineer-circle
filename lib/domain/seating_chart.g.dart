// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seating_chart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeatingChartImpl _$$SeatingChartImplFromJson(Map<String, dynamic> json) =>
    _$SeatingChartImpl(
      docRef: _$JsonConverterFromJson<DocumentReference<Object?>,
              DocumentReference<Object?>>(
          json['docRef'], const DocumentReferenceConverter().fromJson),
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
      'docRef': _$JsonConverterToJson<DocumentReference<Object?>,
              DocumentReference<Object?>>(
          instance.docRef, const DocumentReferenceConverter().toJson),
      'seatTitle': instance.seatTitle,
      'seatGroupList': instance.seatGroupList.map((e) => e.toJson()).toList(),
      'createdAt': unionTimestampConverter.toJson(instance.createdAt),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
