import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:engineer_circle/feature/loading/state/overlay_loading_state_notifier.dart';
import 'package:engineer_circle/feature/notification/controller/snack_bar_controller.dart';
import 'package:engineer_circle/global/logger.dart';
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
          .deleteLatestSeatingChart();
      _ref.read(snackBarProvider).showSnackBar('座席表を削除しました。リロードして画面を更新してください。');
    } on FirebaseException catch (e) {
      // TODO: エラーハンドリング https://firebase.flutter.dev/docs/storage/upload-files#error-handling
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
