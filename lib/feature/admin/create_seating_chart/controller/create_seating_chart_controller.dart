import 'package:engineer_circle/domain/seat_group.dart';
import 'package:engineer_circle/feature/admin/create_seating_chart/usecase/admin_seating_chart_usecase.dart';
import 'package:engineer_circle/feature/loading/state/overlay_loading_state_notifier.dart';
import 'package:engineer_circle/feature/notification/controller/snack_bar_controller.dart';
import 'package:engineer_circle/global/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final createSeatingChartProvider = Provider(
  (ref) => CreateSeatingChartController(ref: ref),
);

class CreateSeatingChartController {
  CreateSeatingChartController({
    required Ref ref,
  }) : _ref = ref;

  final Ref _ref;

  Future<void> createSeatingChart({
    required String title,
    required List<SeatGroup> seats,
    required Function onSuccess,
  }) async {
    if (seats.isEmpty) {
      _ref.read(snackBarProvider).showSnackBar('座席を1つ以上作成してください');
      return;
    }
    try {
      _ref.read(overlayLoadingProvider.notifier).show();
      await _ref
          .read(adminSeatingChartUseCaseProvider)
          .createSeatingChart(title, seats);
      onSuccess();
      _ref.read(snackBarProvider).showSnackBar('新しい座席表を作成しました');
    } on Exception catch (e) {
      // TODO: エラーハンドリング
      logger.e(e);
      _ref.read(snackBarProvider).showSnackBar(e.toString());
    } finally {
      _ref.read(overlayLoadingProvider.notifier).hide();
    }
  }
}
