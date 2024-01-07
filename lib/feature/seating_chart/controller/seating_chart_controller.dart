import 'package:cloud_functions/cloud_functions.dart';
import 'package:engineer_circle/feature/authentication/state/authentication_state_notifier.dart';
import 'package:engineer_circle/feature/loading/state/overlay_loading_state_notifier.dart';
import 'package:engineer_circle/feature/notification/controller/snack_bar_controller.dart';
import 'package:engineer_circle/feature/seating_chart/state/seating_chart_state_notifier.dart';
import 'package:engineer_circle/feature/seating_chart/usecase/seating_chart_usecase.dart';
import 'package:engineer_circle/global/logger.dart';
import 'package:engineer_circle/infrastructure/remote/firebase_exceptions.dart';
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
    } catch (e) {
      // TODO: エラーハンドリング
      logger.e(e);
      _ref.read(seatingChartStateProvider.notifier).failure();
    }
  }

  Future<void> refresh() async {
    _ref.read(overlayLoadingProvider.notifier).show();
    try {
      final seatingChart =
          await _ref.read(seatingChartUseCaseProvider).getLatest();
      _ref
          .read(seatingChartStateProvider.notifier)
          .initSeatingChart(seatingChart);
    } catch (e) {
      // TODO: エラーハンドリング
      logger.e(e);
    } finally {
      _ref.read(overlayLoadingProvider.notifier).hide();
    }
  }

  Future<void> changeSeat({
    required String docId,
    required Function onSuccess,
  }) async {
    _ref.read(overlayLoadingProvider.notifier).show();
    try {
      final seatingChart =
          await _ref.read(seatingChartUseCaseProvider).getSeatingChart(docId);
      _ref
          .read(seatingChartStateProvider.notifier)
          .initSeatingChart(seatingChart);
      onSuccess();
    } catch (e) {
      // TODO: エラーハンドリング
      logger.e(e);
      _ref.read(snackBarProvider).showSnackBar(e.toString());
    } finally {
      _ref.read(overlayLoadingProvider.notifier).hide();
    }
  }

  Future<void> updateSeatUser(
    String seatId,
    String docId,
  ) async {
    _ref.read(overlayLoadingProvider.notifier).show();
    try {
      await _ref
          .read(seatingChartUseCaseProvider)
          .updateSeatUser(seatId, docId);
      // 再度読み込む
      await refresh();
    } on UserIdNotFoundException catch (_) {
      // 強制ログアウト
      _ref.read(authStateProvider.notifier).unAuthenticated();
    } on FirebaseFunctionsException catch (e) {
      if (e.code == 'already-exists') {
        _ref.read(snackBarProvider).showSnackBar('既に別のユーザーが座っています');
      } else {
        logger.e(e);
        _ref.read(snackBarProvider).showSnackBar('不明なエラーです');
      }
    } catch (e) {
      // TODO: エラーハンドリング
      logger.e(e);
      _ref.read(snackBarProvider).showSnackBar(e.toString());
    } finally {
      _ref.read(overlayLoadingProvider.notifier).hide();
    }
  }
}
