import 'package:engineer_circle/feature/authentication/state/authentication_state.dart';
import 'package:engineer_circle/infrastructure/repository/authentication_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authUseCaseProvider = Provider(
  (ref) => AuthenticationUseCase(
    authenticationRepository: ref.watch(authRepositoryProvider),
  ),
);

class AuthenticationUseCase {
  AuthenticationUseCase({
    required this.authenticationRepository,
  });

  final AuthenticationRepository authenticationRepository;

  AuthenticationState getAuthenticationState() {
    final uid = authenticationRepository.getCurrentUserUid();
    if (uid == null) {
      return AuthenticationState.unAuthenticated;
    } else {
      return AuthenticationState.authenticated;
    }
  }
}
