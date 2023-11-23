import 'package:engineer_circle/feature/seating_chart/state/seating_chart_state.dart';
import 'package:engineer_circle/feature/seating_chart/state/seating_chart_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seatingChartProvider = Provider(
  (ref) => SeatingChartController(ref: ref),
);

class SeatingChartController {
  SeatingChartController({
    required Ref ref,
  }) : _ref = ref;

  final Ref _ref;

  Future<void> init() async {
    // TODO: Remoteから取得する
    const seatingChart = SeatingChartStateSuccess(
      seatGroups: [],
    );

    _ref
        .read(seatingChartStateProvider.notifier)
        .initSeatingChart(seatingChart);
  }
}
