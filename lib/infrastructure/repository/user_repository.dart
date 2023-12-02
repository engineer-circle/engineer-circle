import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:engineer_circle/feature/profile/state/component_state/user.dart';
import 'package:engineer_circle/infrastructure/remote/firebase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userRepositoryProvider = Provider(
  (ref) => UserRepository(
    firestore: ref.watch(firebaseFirestoreProvider),
  ),
);

class UserRepository {
  UserRepository({
    required this.firestore,
  });

  final FirebaseFirestore firestore;

  static const usersCollectionName = 'users';

  Future<void> updateProfile(
    String uid,
    User user,
  ) async {
    final userRef = firestore.collection(usersCollectionName);
    await userRef.doc(uid).set(user.toJson());
  }
}
