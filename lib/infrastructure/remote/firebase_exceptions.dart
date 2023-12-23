class UserIdNotFoundException implements Exception {
  UserIdNotFoundException();

  @override
  String toString() {
    return 'UserIdNotFoundException: userID not found';
  }
}
