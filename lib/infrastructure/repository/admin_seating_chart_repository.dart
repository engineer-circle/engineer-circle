import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:engineer_circle/domain/seating_chart.dart';
import 'package:engineer_circle/infrastructure/remote/firebase.dart';
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

  Future<void> createSeatingChart(
    String docId,
    SeatingChart seatingChart,
  ) async {
    final seatingChartRef = firestore.collection(seatsCollectionName);
    await seatingChartRef.doc(docId).set(seatingChart.toJson());
  }
}
