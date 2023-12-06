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
    /// シート名
    required String title,

    /// 座席表
    required List<SeatGroup> seats,

    /// 作成日
    @unionTimestampConverter
    @Default(UnionTimestamp.serverTimestamp())
    UnionTimestamp createdAt,
  }) = _SeatingChart;

  const SeatingChart._();

  factory SeatingChart.fromJson(Map<String, dynamic> json) =>
      _$SeatingChartFromJson(json);
}
