import 'dart:async';

import 'package:engineer_circle/feature/authentication/state/authentication_state.dart';
import 'package:engineer_circle/feature/authentication/state/authentication_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authProvider = Provider((ref) => AuthenticationController(ref));

class AuthenticationController {
  AuthenticationController(this.ref);

  final Ref ref;

  Future<void> update() async {
    // final authState = await ref.read(authUseCaseProvider).getAuthState();
    ref
        .read(authStateProvider.notifier)
        .updateState(AuthenticationState.unAuthenticated);
  }
}
