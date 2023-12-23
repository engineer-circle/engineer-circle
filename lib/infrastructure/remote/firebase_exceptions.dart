class FirebaseCustomException implements Exception {
  final String message;
  FirebaseCustomException(this.message);

  @override
  String toString() {
    return 'FirebaseCustomException: $message';
  }
}

class UserIdNotFoundException implements Exception {
  UserIdNotFoundException();

  @override
  String toString() {
    return 'UserIdNotFoundException: userID not found';
  }
}
