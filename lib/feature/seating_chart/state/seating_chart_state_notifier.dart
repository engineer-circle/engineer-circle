import 'package:engineer_circle/feature/seating_chart/state/seating_chart_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seatingChartStateProvider = StateNotifierProvider.autoDispose<
    SeatingChartStateNotifier, SeatingChartState>(
  (ref) => SeatingChartStateNotifier(),
);

class SeatingChartStateNotifier extends StateNotifier<SeatingChartState> {
  SeatingChartStateNotifier() : super(SeatingChartStateLoading());

  void initSeatingChart(
    SeatingChartStateSuccess seatingChartStateSuccess,
  ) {
    state = seatingChartStateSuccess;
  }
}
