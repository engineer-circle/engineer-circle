import 'package:engineer_circle/domain/seat_group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_seating_chart.freezed.dart';
part 'create_seating_chart.g.dart';

@freezed
class CreateSeatingChart with _$CreateSeatingChart {
  // 警告出ているがclass自体に定義するとfreezedの自動生成とコンフリクトする
  @JsonSerializable(explicitToJson: true)
  const factory CreateSeatingChart({
    /// シート名
    required String seatTitle,

    /// 座席表
    required List<SeatGroup> seatGroupList,
  }) = _CreateSeatingChart;

  const CreateSeatingChart._();

  factory CreateSeatingChart.fromJson(Map<String, dynamic> json) =>
      _$CreateSeatingChartFromJson(json);
}
