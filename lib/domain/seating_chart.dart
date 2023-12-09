import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:engineer_circle/domain/converter/document_reference_converter.dart';
import 'package:engineer_circle/domain/converter/union_timestamp.dart';
import 'package:engineer_circle/domain/seat_group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seating_chart.freezed.dart';
part 'seating_chart.g.dart';

@freezed
class SeatingChart with _$SeatingChart {
  // 警告出ているがclass自体に定義するとfreezedの自動生成とコンフリクトする
  @JsonSerializable(explicitToJson: true)
  const factory SeatingChart({
    @DocumentReferenceConverter() DocumentReference? docRef,

    /// シート名
    required String seatTitle,

    /// 座席表
    required List<SeatGroup> seatGroupList,

    /// 作成日
    @unionTimestampConverter
    @Default(UnionTimestamp.serverTimestamp())
    UnionTimestamp createdAt,
  }) = _SeatingChart;

  const SeatingChart._();

  factory SeatingChart.fromJson(Map<String, dynamic> json) =>
      _$SeatingChartFromJson(json);
}
