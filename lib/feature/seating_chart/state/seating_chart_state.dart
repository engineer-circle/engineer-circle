import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:engineer_circle/feature/seating_chart/state/component_state/seat_group_view_property.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seating_chart_state.freezed.dart';

sealed class SeatingChartState {}

class SeatingChartStateLoading extends SeatingChartState {}

class SeatingChartStateFailure extends SeatingChartState {}

@freezed
class SeatingChartStateSuccess extends SeatingChartState
    with _$SeatingChartStateSuccess {
  const factory SeatingChartStateSuccess({
    required DocumentReference docRef,
    // 行と列で構成される2次元配列
    required List<List<SeatGroupViewProperty>> seatGroupMatrix,
    required String currentSeatTitle,
  }) = _SeatingChartStateSuccess;
}
