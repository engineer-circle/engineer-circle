import 'package:engineer_circle/feature/seating_chart/state/component_state/seat_group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seating_chart_state.freezed.dart';

sealed class SeatingChartState {}

class SeatingChartStateLoading extends SeatingChartState {}

class SeatingChartStateFailure extends SeatingChartState {}

@freezed
class SeatingChartStateSuccess extends SeatingChartState
    with _$SeatingChartStateSuccess {
  const factory SeatingChartStateSuccess({
    required List<List<SeatGroup>> seatGroups,
  }) = _SeatingChartStateSuccess;
}
