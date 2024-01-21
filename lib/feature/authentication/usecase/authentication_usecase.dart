import 'package:engineer_circle/feature/authentication/state/authentication_state.dart';
import 'package:engineer_circle/feature/authentication/state/component_state/user_role.dart';
import 'package:engineer_circle/infrastructure/local/preferences.dart';
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
    preferences: ref.watch(preferencesProvider),
  ),
);

class AuthenticationUseCase {
  AuthenticationUseCase({
    required AuthenticationRepository authRepository,
    required AdminSeatingChartRepository adminRepository,
    required UserRepository userRepository,
    required Preferences preferences,
  })  : _authRepository = authRepository,
        _adminRepository = adminRepository,
        _userRepository = userRepository,
        _preferences = preferences;

  final AuthenticationRepository _authRepository;
  final AdminSeatingChartRepository _adminRepository;
  final UserRepository _userRepository;
  final Preferences _preferences;

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
    _preferences.setAuthMethod(AuthMethod.google.name);

    // 管理者権限をチェック
    final isAdmin = await _adminRepository.checkAdmin();
    final role = isAdmin ? UserRole.admin : UserRole.normal;

    // 認証済みとして返す
    return Authenticated(role: role);
  }

  Future<void> logout() async {
    final authMethod = _preferences.getAuthMethod();
    if (authMethod == null) {
      throw const FormatException("authMethod cannot be null");
    }

    switch (AuthMethod.values.byName(authMethod)) {
      case AuthMethod.google:
        await _authRepository.googleLogout();
      case AuthMethod.apple:
      // TODO: apple Logout
    }
    _preferences.resetAuthMethod();
  }
}

enum AuthMethod { google, apple }
