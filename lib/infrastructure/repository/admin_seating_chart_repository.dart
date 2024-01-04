import 'package:cloud_functions/cloud_functions.dart';
import 'package:engineer_circle/domain/create_seating_chart.dart';
import 'package:engineer_circle/infrastructure/remote/firebase.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final adminSeatingChartRepositoryProvider = Provider(
  (ref) => AdminSeatingChartRepository(
    functions: ref.watch(firebaseFunctionsProvider),
    firebaseAuth: ref.watch(firebaseAuthProvider),
  ),
);

class AdminSeatingChartRepository {
  AdminSeatingChartRepository({
    required FirebaseFunctions functions,
    required FirebaseAuth firebaseAuth,
  })  : _functions = functions,
        _firebaseAuth = firebaseAuth;

  final FirebaseFunctions _functions;
  final FirebaseAuth _firebaseAuth;

  static const createSeatCommand = 'createSeat';
  static const createShuffleSeatCommand = 'createShuffleSeat';
  static const deleteLatestSeatCommand = 'deleteLatestSeat';

  Future<bool> checkAdmin() async {
    final user = _firebaseAuth.currentUser;
    if (user != null) {
      final idTokenResult = await user.getIdTokenResult();
      return idTokenResult.claims?['admin'] == true;
    } else {
      return false;
    }
  }

  Future<void> createSeatingChart(
    CreateSeatingChart seatingChart,
  ) async {
    await _functions.httpsCallable(createSeatCommand).call(
      <String, dynamic>{
        'seatingChart': seatingChart.toJson(),
      },
    );
  }

  Future<void> createShuffleSeatingChart(String seatTitle) async {
    await _functions.httpsCallable(createShuffleSeatCommand).call(
      <String, dynamic>{
        'seatTitle': seatTitle,
      },
    );
  }

  Future<void> deleteLatestSeatingChart() async {
    await _functions.httpsCallable(deleteLatestSeatCommand).call();
  }
}
