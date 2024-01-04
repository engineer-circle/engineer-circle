import 'dart:async';

import 'package:engineer_circle/feature/authentication/state/authentication_state.dart';
import 'package:engineer_circle/feature/authentication/state/authentication_state_notifier.dart';
import 'package:engineer_circle/feature/authentication/usecase/authentication_usecase.dart';
import 'package:engineer_circle/feature/loading/state/overlay_loading_state_notifier.dart';
import 'package:engineer_circle/feature/notification/controller/snack_bar_controller.dart';
import 'package:engineer_circle/global/logger.dart';
import 'package:engineer_circle/infrastructure/remote/firebase_exceptions.dart';
import 'package:engineer_circle/infrastructure/repository/authentication_repository.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authProvider = Provider((ref) => AuthenticationController(ref: ref));

class AuthenticationController {
  AuthenticationController({
    required Ref ref,
  }) : _ref = ref;

  final Ref _ref;

  static const String networkErrorCode = 'network_error';

  Future<void> update() async {
    try {
      final authState =
          await _ref.read(authUseCaseProvider).checkAuthentication();
      _ref.read(authStateProvider.notifier).updateState(authState);
    } on Exception catch (e) {
      logger.e(e);
      _ref.read(snackBarProvider).showSnackBar(e.toString());
      _ref.read(authStateProvider.notifier).updateState(UnAuthenticated());
    }
  }

  Future<void> googleSignIn() async {
    _ref.read(overlayLoadingProvider.notifier).show();
    try {
      final authState = await _ref.read(authUseCaseProvider).googleSignIn();
      _ref.read(authStateProvider.notifier).authenticated(authState);
    } on UserIdNotFoundException catch (_) {
      _ref.read(snackBarProvider).showSnackBar('認証に失敗しました');
    } on PlatformException catch (e) {
      if (e.code == networkErrorCode) {
        _ref.read(snackBarProvider).showSnackBar('通信エラーです');
        return;
      }
      logger.e(e);
      _ref.read(snackBarProvider).showSnackBar(e.code);
    } on Exception catch (e) {
      // TODO: エラーハンドリング
      logger.e(e);
      _ref.read(snackBarProvider).showSnackBar(e.toString());
    } finally {
      _ref.read(overlayLoadingProvider.notifier).hide();
    }
  }

  Future<void> logout() async {
    _ref.read(overlayLoadingProvider.notifier).show();
    try {
      // TODO: Apple or Googleどちらでログインしたかでハンドリング
      await _ref.read(authRepositoryProvider).googleLogout();
      _ref.read(authStateProvider.notifier).unAuthenticated();
    } on PlatformException catch (e) {
      if (e.code == networkErrorCode) {
        _ref.read(snackBarProvider).showSnackBar('通信エラーです');
        return;
      }
      logger.e(e);
      _ref.read(snackBarProvider).showSnackBar(e.code);
    } on Exception catch (e) {
      // TODO: エラーハンドリング
      logger.e(e);
      _ref.read(snackBarProvider).showSnackBar(e.toString());
    } finally {
      _ref.read(overlayLoadingProvider.notifier).hide();
    }
  }
}
