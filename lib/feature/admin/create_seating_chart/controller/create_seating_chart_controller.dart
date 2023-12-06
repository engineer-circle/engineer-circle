import 'package:engineer_circle/domain/seat_group.dart';
import 'package:engineer_circle/feature/admin/create_seating_chart/usecase/admin_seating_chart_usecase.dart';
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
    try {
      // TODO ローディング
      await _ref
          .read(adminSeatingChartUseCaseProvider)
          .createSeatingChart(title, seats);
      onSuccess();
    } on Exception catch (e) {
      // TODO: エラーハンドリング
      logger.e(e);
    }
  }
}
