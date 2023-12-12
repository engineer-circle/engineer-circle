import 'dart:async';

import 'package:engineer_circle/feature/authentication/state/authentication_state_notifier.dart';
import 'package:engineer_circle/feature/authentication/usecase/authentication_usecase.dart';
import 'package:engineer_circle/feature/loading/state/overlay_loading_state_notifier.dart';
import 'package:engineer_circle/feature/notification/controller/snack_bar_controller.dart';
import 'package:engineer_circle/global/logger.dart';
import 'package:engineer_circle/infrastructure/repository/authentication_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authProvider = Provider((ref) => AuthenticationController(ref: ref));

class AuthenticationController {
  AuthenticationController({
    required Ref ref,
  }) : _ref = ref;

  final Ref _ref;

  void update() async {
    final authState = _ref.read(authUseCaseProvider).getAuthenticationState();
    _ref.read(authStateProvider.notifier).updateState(authState);
  }

  Future<void> googleAuthenticate() async {
    _ref.read(overlayLoadingProvider.notifier).show();
    try {
      await _ref.read(authRepositoryProvider).googleSignIn();
    } on Exception catch (e) {
      // TODO: エラーハンドリング
      logger.e(e);
      _ref.read(snackBarProvider).showSnackBar(e.toString());
    } finally {
      _ref.read(overlayLoadingProvider.notifier).hide();
    }
  }
}
