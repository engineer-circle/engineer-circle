import 'package:engineer_circle/feature/loading/state/overlay_loading_state_notifier.dart';
import 'package:engineer_circle/feature/notification/controller/snack_bar_controller.dart';
import 'package:engineer_circle/global/logger.dart';
import 'package:engineer_circle/infrastructure/remote/firebase_exceptions.dart';
import 'package:engineer_circle/infrastructure/repository/admin_seating_chart_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final adminMenuProvider = Provider(
  (ref) => AdminMenuController(ref: ref),
);

class AdminMenuController {
  AdminMenuController({
    required Ref ref,
  }) : _ref = ref;

  final Ref _ref;

  Future<void> deleteRecentSeatingChart() async {
    _ref.read(overlayLoadingProvider.notifier).show();
    try {
      await _ref
          .read(adminSeatingChartRepositoryProvider)
          .deleteRecentSeatingChart();
      _ref.read(snackBarProvider).showSnackBar('座席表を削除しました。リロードして画面を更新してください。');
    } on FirebaseCustomException catch (e) {
      logger.e(e);
      _ref.read(snackBarProvider).showSnackBar(e.toString());
    } catch (e) {
      logger.e(e);
      _ref.read(snackBarProvider).showSnackBar('不明なエラーです');
    } finally {
      _ref.read(overlayLoadingProvider.notifier).hide();
    }
  }
}
