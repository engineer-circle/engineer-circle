import 'package:engineer_circle/domain/seat_group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_seating_chart_state.freezed.dart';

@freezed
class CreateSeatingChartState with _$CreateSeatingChartState {
  const factory CreateSeatingChartState({
    @Default('') String title,
    @Default([]) List<SeatGroup> seats,
  }) = _CreateSeatingChartState;

  const CreateSeatingChartState._();
}
