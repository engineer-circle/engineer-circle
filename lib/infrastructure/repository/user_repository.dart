import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:engineer_circle/domain/user.dart';
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
  static const userIdFieldName = 'id';

  Future<User?> getUser(String uid) async {
    final userRef = firestore.collection(usersCollectionName);
    final snapshot = await userRef.doc(uid).get();

    if (snapshot.data() != null) {
      return User.fromJson(snapshot.data()!);
    } else {
      return null;
    }
  }

  Future<void> updateProfile(
    String uid,
    User user,
  ) async {
    final userRef = firestore.collection(usersCollectionName);
    await userRef.doc(uid).set(user.toJson());
  }

  Future<List<User>> getWhereInUsers(List<String> uids) async {
    final List<List<String>> uidBatches = _partitionUids(uids, 10);

    final List<User> fetchedUsers = [];

    for (var uidBatch in uidBatches) {
      final fetchedItems = await _getUsers(
        reference: firestore.collection(usersCollectionName),
        whereInList: uidBatch,
      );

      fetchedUsers.addAll(fetchedItems);
    }

    return fetchedUsers;
  }

  List<List<String>> _partitionUids(List<String> uids, int batchSize) {
    List<List<String>> uidBatches = [];
    for (int i = 0; i < uids.length; i += batchSize) {
      uidBatches.add(uids.sublist(
          i, i + batchSize > uids.length ? uids.length : i + batchSize));
    }
    return uidBatches;
  }

  Future<List<User>> _getUsers({
    required CollectionReference<Map<String, dynamic>> reference,
    required List<String> whereInList,
  }) async {
    final query =
        reference.limit(10).where(userIdFieldName, whereIn: whereInList);
    final snapshot = await query.get();
    if (snapshot.docs.isEmpty) {
      return [];
    }
    return snapshot.docs.map((doc) => User.fromJson(doc.data())).toList();
  }
}
