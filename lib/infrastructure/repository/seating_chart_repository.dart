import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:engineer_circle/domain/seating_chart.dart';
import 'package:engineer_circle/global/logger.dart';
import 'package:engineer_circle/infrastructure/remote/firebase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seatingChartRepositoryProvider = Provider(
  (ref) => SeatingChartRepository(
    firestore: ref.watch(firebaseFirestoreProvider),
    functions: ref.watch(firebaseFunctionsProvider),
  ),
);

class SeatingChartRepository {
  SeatingChartRepository({
    required this.firestore,
    required this.functions,
  });

  final FirebaseFirestore firestore;
  final FirebaseFunctions functions;

  static const seatsCollectionName = 'seats';
  static const updateSeatUserCommand = 'updateSeatUser';

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

  // TODO: キャッシュしておきたい
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

  // TODO: キャッシュがあればキャッシュから取得するようにしたい
  Future<SeatingChart> getSeatingChart(String docId) async {
    final seatingChartRef =
        firestore.collection(seatsCollectionName).doc(docId);
    final snapshot = await seatingChartRef.get();
    if (!snapshot.exists) {
      throw Exception('No seating chart found. docId: $docId');
    }

    return SeatingChart.fromJson(snapshot.data() as Map<String, dynamic>);
  }

  Future<void> updateSeatUser(
    String seatId,
    String userId,
    String docId,
  ) async {
    await functions.httpsCallable(updateSeatUserCommand).call(
      <String, dynamic>{
        'seatId': seatId,
        'userId': userId,
        'docId': docId,
      },
    );
  }
}
