import 'package:engineer_circle/feature/loading/state/overlay_loading_state_notifier.dart';
import 'package:engineer_circle/feature/notification/controller/snack_bar_controller.dart';
import 'package:engineer_circle/global/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final initialSetupSeatProvider = Provider(
  (ref) => InitialSetupSeatController(ref: ref),
);

class InitialSetupSeatController {
  InitialSetupSeatController({
    required Ref ref,
  }) : _ref = ref;

  final Ref _ref;

  Future<void> createShuffleSeat({
    required String seatName,
    required Function onSuccess,
  }) async {
    _ref.read(overlayLoadingProvider.notifier).show();
    try {
      // TODO: シャッフル作成
      onSuccess();
      _ref.read(snackBarProvider).showSnackBar('座席表を作成しました。リロードして画面を更新してください。');
    } on Exception catch (e) {
      // TODO: エラーハンドリング
      logger.e(e);
      _ref.read(snackBarProvider).showSnackBar(e.toString());
    } finally {
      _ref.read(overlayLoadingProvider.notifier).hide();
    }
  }
}
