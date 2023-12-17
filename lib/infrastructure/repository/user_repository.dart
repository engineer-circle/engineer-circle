import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:engineer_circle/domain/user.dart';
import 'package:engineer_circle/infrastructure/remote/firebase.dart';
import 'package:firebase_storage/firebase_storage.dart';
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

  static const whereInLimit = 10;

  Future<User?> getUser(String uid) async {
    final userRef = firestore.collection(usersCollectionName);
    final snapshot = await userRef.doc(uid).get();

    if (snapshot.data() != null) {
      return User.fromJson(snapshot.data()!);
    } else {
      return null;
    }
  }

  Future<void> createUserIfNotExists(String uid) async {
    final userRef = firestore.collection(usersCollectionName);

    final docSnapshot = await userRef.doc(uid).get();
    // ドキュメントが存在しない場合のみ、新しいユーザーを作成
    if (!docSnapshot.exists) {
      final user = User(id: uid);
      await userRef.doc(uid).set(user.toJson());
    }
  }

  Future<String> uploadImageAndGetUrl(
    String uid,
    File file,
  ) async {
    final String fileName = "$uid.jpg";
    final storageRef = FirebaseStorage.instance
        .ref()
        .child(usersCollectionName)
        .child(uid)
        .child(fileName);
    // users/uid/ファイル名 にアップロード
    await storageRef.putFile(file);
    // users/uid/ファイル名 のURLを取得
    return await storageRef.getDownloadURL();
  }

  Future<void> updateProfile(
    String uid,
    User user,
  ) async {
    final userRef = firestore.collection(usersCollectionName);
    await userRef.doc(uid).set(user.toJson());
  }

  /// FirestoreのwhereInクエリの制限に基づいてUIDリストをバッチ処理する。
  /// 各バッチに対して非同期でユーザーデータを取得し、最終的に全ての結果を統合して返す。
  Future<List<User>> getWhereInUsers(List<String> uids) async {
    final List<List<String>> uidBatches = _partitionUids(uids, whereInLimit);
    final usersCollectionRef = firestore.collection(usersCollectionName);

    final List<Future<List<User>>> fetchFutureUsers =
        uidBatches.map((uidBatch) {
      return _getUsers(
        reference: usersCollectionRef,
        whereInList: uidBatch,
      );
    }).toList();

    // すべてのバッチ処理が完了するまで待つ
    final List<List<User>> fetchedUsersLists =
        await Future.wait(fetchFutureUsers);
    return fetchedUsersLists.expand((usersList) => usersList).toList();
  }

  /// 指定されたpartitionSizeをもとにUIDリストを均等なサブリストに分割する。
  List<List<String>> _partitionUids(List<String> uids, int partitionSize) {
    return [
      for (int i = 0; i < uids.length; i += partitionSize)
        // 分割例 [0, 10), [10, 20), [20, 24)
        uids.sublist(i, min(i + partitionSize, uids.length)),
    ];
  }

  /// 指定されたUIDリストに基づくユーザーデータを取得する
  Future<List<User>> _getUsers({
    required CollectionReference<Map<String, dynamic>> reference,
    required List<String> whereInList,
  }) async {
    final query = reference.where(userIdFieldName, whereIn: whereInList);
    final snapshot = await query.get();
    if (snapshot.docs.isEmpty) {
      return [];
    }
    return snapshot.docs.map((doc) => User.fromJson(doc.data())).toList();
  }
}
