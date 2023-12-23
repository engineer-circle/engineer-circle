import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:engineer_circle/domain/seating_chart.dart';
import 'package:engineer_circle/infrastructure/remote/firebase.dart';
import 'package:engineer_circle/infrastructure/remote/firebase_exceptions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final adminSeatingChartRepositoryProvider = Provider(
  (ref) => AdminSeatingChartRepository(
    firestore: ref.watch(firebaseFirestoreProvider),
  ),
);

class AdminSeatingChartRepository {
  AdminSeatingChartRepository({
    required this.firestore,
  });

  final FirebaseFirestore firestore;

  static const seatsCollectionName = 'seats';
  static const createdAtFieldName = 'createdAt';

  Future<void> createSeatingChart(
    String docId,
    SeatingChart seatingChart,
  ) async {
    final seatingChartRef =
        firestore.collection(seatsCollectionName).doc(docId);
    final newSeatingChart = seatingChart.copyWith(docRef: seatingChartRef);
    await seatingChartRef.set(newSeatingChart.toJson());
  }

  Future<void> deleteRecentSeatingChart() async {
    final querySnapshot = await firestore
        .collection(seatsCollectionName)
        .orderBy(createdAtFieldName, descending: true)
        .limit(1)
        .get();

    if (querySnapshot.docs.isNotEmpty) {
      final mostRecentDoc = querySnapshot.docs.first;
      await mostRecentDoc.reference.delete();
    } else {
      throw FirebaseCustomException('削除するシートがありません');
    }
  }
}
