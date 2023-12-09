import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:engineer_circle/domain/seating_chart.dart';
import 'package:engineer_circle/infrastructure/remote/firebase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seatingChartRepositoryProvider = Provider(
  (ref) => SeatingChartRepository(
    firestore: ref.watch(firebaseFirestoreProvider),
  ),
);

class SeatingChartRepository {
  SeatingChartRepository({
    required this.firestore,
  });

  final FirebaseFirestore firestore;

  static const seatsCollectionName = 'seats';

  Future<SeatingChart> getLatest() async {
    final seatingChartRef = firestore.collection(seatsCollectionName);
    final snapshot = await seatingChartRef
        .orderBy('createdAt', descending: true)
        .limit(1)
        .get();
    if (snapshot.docs.isEmpty) {
      throw Exception('No seating chart found');
    }
    final doc = snapshot.docs.first;
    return SeatingChart.fromJson(doc.data());
  }

  Future<List<SeatingChart>> getSeatingCharts() async {
    final seatingChartRef = firestore.collection(seatsCollectionName);

    final snapshot = await seatingChartRef
        .orderBy('createdAt', descending: true)
        .limit(10)
        .get();

    if (snapshot.docs.isEmpty) {
      throw Exception('No seating chart found');
    }
    return snapshot.docs
        .map((doc) => SeatingChart.fromJson(doc.data()))
        .toList();
  }
}
