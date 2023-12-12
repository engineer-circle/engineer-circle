enum AuthenticationState {
  checking,
  unAuthenticated,
  authenticated;

  factory AuthenticationState.from(String? uid) {
    if (uid == null) {
      return AuthenticationState.unAuthenticated;
    } else {
      return AuthenticationState.authenticated;
    }
  }
}
