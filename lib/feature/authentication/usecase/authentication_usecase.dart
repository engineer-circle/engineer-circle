import 'package:engineer_circle/feature/authentication/state/authentication_state.dart';
import 'package:engineer_circle/feature/authentication/state/component_state/user_role.dart';
import 'package:engineer_circle/infrastructure/remote/firebase_exceptions.dart';
import 'package:engineer_circle/infrastructure/repository/admin_seating_chart_repository.dart';
import 'package:engineer_circle/infrastructure/repository/authentication_repository.dart';
import 'package:engineer_circle/infrastructure/repository/user_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authUseCaseProvider = Provider(
  (ref) => AuthenticationUseCase(
    authRepository: ref.watch(authRepositoryProvider),
    adminRepository: ref.watch(adminSeatingChartRepositoryProvider),
    userRepository: ref.watch(userRepositoryProvider),
  ),
);

class AuthenticationUseCase {
  AuthenticationUseCase({
    required AuthenticationRepository authRepository,
    required AdminSeatingChartRepository adminRepository,
    required UserRepository userRepository,
  })  : _authRepository = authRepository,
        _adminRepository = adminRepository,
        _userRepository = userRepository;

  final AuthenticationRepository _authRepository;
  final AdminSeatingChartRepository _adminRepository;
  final UserRepository _userRepository;

  Future<AuthenticationState> checkAuthentication() async {
    final uid = _authRepository.getCurrentUserUid();
    if (uid != null) {
      final isAdmin = await _adminRepository.checkAdmin();
      final role = isAdmin ? UserRole.admin : UserRole.normal;
      return Authenticated(role: role);
    } else {
      return UnAuthenticated();
    }
  }

  Future<Authenticated> googleSignIn() async {
    // 認証
    final uid = await _authRepository.googleSignIn();
    if (uid == null) {
      throw UserIdNotFoundException();
    }

    // 新規の場合はuidを登録
    await _userRepository.createUserIfNotExists(uid);

    // 管理者権限をチェック
    final isAdmin = await _adminRepository.checkAdmin();
    final role = isAdmin ? UserRole.admin : UserRole.normal;

    // 認証済みとして返す
    return Authenticated(role: role);
  }
}
