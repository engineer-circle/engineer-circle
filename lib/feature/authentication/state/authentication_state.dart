import 'package:engineer_circle/feature/authentication/state/component_state/user_role.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_state.freezed.dart';

sealed class AuthenticationState {}

class AuthenticationChecking extends AuthenticationState {}

class UnAuthenticated extends AuthenticationState {}

@freezed
class Authenticated extends AuthenticationState with _$Authenticated {
  const factory Authenticated({
    required UserRole role,
  }) = _Authenticated;
}

extension AuthenticationStateExtension on AuthenticationState {
  bool get isAdmin {
    switch (this) {
      case Authenticated authenticated:
        return authenticated.role == UserRole.admin;
      default:
        return false;
    }
  }
}
