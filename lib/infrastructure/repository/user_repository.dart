import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:engineer_circle/infrastructure/remote/firebase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileRepositoryProvider = Provider(
  (ref) => ProfileRepository(
    firestore: ref.watch(firebaseFirestoreProvider),
  ),
);

class ProfileRepository {
  ProfileRepository({
    required this.firestore,
  });

  final FirebaseFirestore firestore;

  static const usersCollectionName = 'users';
}
