import 'package:engineer_circle/feature/admin/create_seating_chart/state/component_state/create_seat_group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_seating_chart_state.freezed.dart';

@freezed
class CreateSeatingChartState with _$CreateSeatingChartState {
  const factory CreateSeatingChartState({
    @Default([]) List<CreateSeatGroup> seats,
  }) = _CreateSeatingChartState;

  const CreateSeatingChartState._();
}
