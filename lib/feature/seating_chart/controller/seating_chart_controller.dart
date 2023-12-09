import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:engineer_circle/feature/loading/state/overlay_loading_state_notifier.dart';
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

  Future<void> changeSeat({
    required DocumentReference docRef,
    required Function onSuccess,
  }) async {
    _ref.read(overlayLoadingProvider.notifier).show();
    try {
      final seatingChart =
          await _ref.read(seatingChartUseCaseProvider).getSeatingChart(docRef);
      _ref
          .read(seatingChartStateProvider.notifier)
          .initSeatingChart(seatingChart);
      onSuccess();
    } on Exception catch (e) {
      // TODO: エラーハンドリング
      logger.e(e);
    } finally {
      _ref.read(overlayLoadingProvider.notifier).hide();
    }
  }
}
