import 'package:engineer_circle/feature/seating_chart/state/seat_titles_view_state_notifier.dart';
import 'package:engineer_circle/feature/seating_chart/usecase/seating_chart_usecase.dart';
import 'package:engineer_circle/global/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seatTitlesProvider = Provider(
  (ref) => SeatTitlesController(ref: ref),
);

class SeatTitlesController {
  SeatTitlesController({
    required Ref ref,
  }) : _ref = ref;

  final Ref _ref;

  Future<void> init() async {
    try {
      final titles = await _ref.read(seatingChartUseCaseProvider).getTitles();
      _ref.read(seatTitlesStateProvider.notifier).updateTitlesSuccess(titles);
    } on Exception catch (e) {
      // TODO: エラーハンドリング
      _ref.read(seatTitlesStateProvider.notifier).updateTitlesFailure();
      logger.e(e);
    }
  }
}
