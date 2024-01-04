import 'package:engineer_circle/feature/authentication/state/authentication_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authStateProvider =
    StateNotifierProvider<AuthenticationStateNotifier, AuthenticationState>(
        (ref) => AuthenticationStateNotifier());

class AuthenticationStateNotifier extends StateNotifier<AuthenticationState> {
  AuthenticationStateNotifier() : super(AuthenticationChecking());

  void updateState(AuthenticationState state) async {
    this.state = state;
  }

  void unAuthenticated() async {
    state = UnAuthenticated();
  }

  void authenticated(Authenticated authState) async {
    state = authState;
  }
}
