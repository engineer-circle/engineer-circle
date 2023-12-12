import 'dart:io';

import 'package:engineer_circle/domain/user.dart';
import 'package:engineer_circle/feature/authentication/state/authentication_state_notifier.dart';
import 'package:engineer_circle/feature/loading/state/overlay_loading_state_notifier.dart';
import 'package:engineer_circle/feature/notification/controller/snack_bar_controller.dart';
import 'package:engineer_circle/feature/profile/state/profile_form_state_notifier.dart';
import 'package:engineer_circle/global/logger.dart';
import 'package:engineer_circle/infrastructure/repository/authentication_repository.dart';
import 'package:engineer_circle/infrastructure/repository/user_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileFormProvider = Provider(
  (ref) => ProfileFormController(ref: ref),
);

class ProfileFormController {
  ProfileFormController({
    required Ref ref,
  }) : _ref = ref;

  final Ref _ref;

  Future<void> initProfileForm(User initialProfile) async {
    _ref
        .read(profileFormStateProvider.notifier)
        .initProfileForm(initialProfile);
  }

  Future<void> uploadImage(
    String uid,
    File file,
  ) async {
    _ref.read(overlayLoadingProvider.notifier).show();
    try {
      final url = await _ref
          .read(userRepositoryProvider)
          .uploadImageAndGetUrl(uid, file);
      _ref
          .read(profileFormStateProvider.notifier)
          .updateProfile(avatarUrl: url);
    } on FirebaseException catch (e) {
      // TODO: エラーハンドリング https://firebase.flutter.dev/docs/storage/upload-files#error-handling
      logger.e(e);
      _ref.read(snackBarProvider).showSnackBar(e.toString());
    } finally {
      _ref.read(overlayLoadingProvider.notifier).hide();
    }
  }

  Future<void> updateProfile({
    required User user,
    required Function onSuccess,
  }) async {
    _ref.read(overlayLoadingProvider.notifier).show();
    try {
      final uid = _ref.read(authRepositoryProvider).getCurrentUserUid();
      if (uid == null) {
        // 強制ログアウト
        _ref.read(authStateProvider.notifier).unAuthenticated();
        return;
      }

      await _ref.read(userRepositoryProvider).updateProfile(uid, user);
      onSuccess();
      _ref.read(snackBarProvider).showSnackBar('ユーザー情報を更新しました');
    } on Exception catch (e) {
      // TODO: エラーハンドリング
      logger.e(e);
      _ref.read(snackBarProvider).showSnackBar(e.toString());
    } finally {
      _ref.read(overlayLoadingProvider.notifier).hide();
    }
  }
}
