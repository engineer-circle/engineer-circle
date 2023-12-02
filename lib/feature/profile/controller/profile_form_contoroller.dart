import 'package:engineer_circle/feature/profile/state/component_state/user.dart';
import 'package:engineer_circle/feature/profile/state/profile_form_state_notifier.dart';
import 'package:engineer_circle/global/logger.dart';
import 'package:engineer_circle/infrastructure/repository/user_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileFormProvider = Provider(
  (ref) => ProfileFormController(ref: ref),
);

class ProfileFormController {
  ProfileFormController({
    required Ref ref,
  }) : _ref = ref;

  final Ref _ref;

  Future<void> initProfileForm(bool isEdit) async {
    try {
      // TODO: uidを取得する
      final uid = 'hYrMueItZqHe4hCVkpmX';
      final user =
          isEdit ? await _ref.read(userRepositoryProvider).getUser(uid) : null;
      _ref.read(profileFormStateProvider.notifier).initProfileForm(user);
    } on Exception catch (e) {
      // TODO: エラーハンドリング
      logger.e(e);
    }
  }

  Future<void> updateProfile({
    required User user,
    required Function onSuccess,
  }) async {
    try {
      // TODO: uidを取得する
      final uid = 'hYrMueItZqHe4hCVkpmX';
      await _ref.read(userRepositoryProvider).updateProfile(uid, user);
      onSuccess();
    } on Exception catch (e) {
      // TODO: エラーハンドリング
      logger.e(e);
    }
  }
}
