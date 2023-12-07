import 'package:engineer_circle/feature/seating_chart/state/seating_chart_state_notifier.dart';
import 'package:engineer_circle/feature/seating_chart/usecase/seating_chart_usecase.dart';
import 'package:engineer_circle/global/logger.dart';
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
    try {
      final seatingChart =
          await _ref.read(seatingChartUseCaseProvider).getLatest();
      _ref
          .read(seatingChartStateProvider.notifier)
          .initSeatingChart(seatingChart);
    } on Exception catch (e) {
      // TODO: エラーハンドリング
      logger.e(e);
    }
  }
}
