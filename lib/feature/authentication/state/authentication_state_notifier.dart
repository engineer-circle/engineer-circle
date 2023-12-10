import 'package:engineer_circle/feature/authentication/state/authentication_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authStateProvider =
    StateNotifierProvider<AuthenticationStateNotifier, AuthenticationState>(
        (ref) => AuthenticationStateNotifier());

class AuthenticationStateNotifier extends StateNotifier<AuthenticationState> {
  AuthenticationStateNotifier() : super(AuthenticationState.checking);

  void updateState(AuthenticationState state) async {
    this.state = state;
  }
}
