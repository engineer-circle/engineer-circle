import 'package:engineer_circle/domain/converter/union_timestamp.dart';
import 'package:engineer_circle/domain/create_seat_group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_seating_chart.freezed.dart';
part 'create_seating_chart.g.dart';

@freezed
class CreateSeatingChart with _$CreateSeatingChart {
  const factory CreateSeatingChart({
    /// シート名
    required String title,

    /// 座席表
    required List<CreateSeatGroup> seats,

    /// 作成日
    @unionTimestampConverter
    @Default(UnionTimestamp.serverTimestamp())
    UnionTimestamp createdAt,
  }) = _CreateSeatingChart;

  const CreateSeatingChart._();

  factory CreateSeatingChart.fromJson(Map<String, dynamic> json) =>
      _$CreateSeatingChartFromJson(json);
}
