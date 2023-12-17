import 'package:engineer_circle/domain/user.dart';
import 'package:engineer_circle/feature/authentication/state/authentication_state_notifier.dart';
import 'package:engineer_circle/feature/profile/state/profile_state_notifier.dart';
import 'package:engineer_circle/global/logger.dart';
import 'package:engineer_circle/infrastructure/repository/authentication_repository.dart';
import 'package:engineer_circle/infrastructure/repository/user_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileProvider = Provider(
  (ref) => ProfileController(ref: ref),
);

class ProfileController {
  ProfileController({
    required Ref ref,
  }) : _ref = ref;

  final Ref _ref;

  Future<void> init() async {
    try {
      final uid = _ref.read(authRepositoryProvider).getCurrentUserUid();
      if (uid == null) {
        // 強制ログアウト
        _ref.read(authStateProvider.notifier).unAuthenticated();
        return;
      }

      final user = await _ref.read(userRepositoryProvider).getUser(uid);
      if (user == null) {
        throw Exception('User is null');
      }
      _ref.read(profileStateProvider.notifier).initProfile(user);
    } on Exception catch (e) {
      // TODO: エラーハンドリング
      logger.e(e);
      _ref.read(profileStateProvider.notifier).failure();
    }
  }

  Future<void> update(User user) async {
    _ref.read(profileStateProvider.notifier).initProfile(user);
  }
}
