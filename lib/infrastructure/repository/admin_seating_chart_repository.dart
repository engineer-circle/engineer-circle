import 'package:cloud_functions/cloud_functions.dart';
import 'package:engineer_circle/domain/create_seating_chart.dart';
import 'package:engineer_circle/infrastructure/remote/firebase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final adminSeatingChartRepositoryProvider = Provider(
  (ref) => AdminSeatingChartRepository(
    functions: ref.watch(firebaseFunctionsProvider),
  ),
);

class AdminSeatingChartRepository {
  AdminSeatingChartRepository({
    required this.functions,
  });
  final FirebaseFunctions functions;

  static const createSeatCommand = 'createSeat';
  static const createShuffleSeatCommand = 'createShuffleSeat';
  static const deleteLatestSeatCommand = 'deleteLatestSeat';

  Future<void> createSeatingChart(
    CreateSeatingChart seatingChart,
  ) async {
    await functions.httpsCallable(createSeatCommand).call(
      <String, dynamic>{
        'seatingChart': seatingChart.toJson(),
      },
    );
  }

  Future<void> createShuffleSeatingChart(String seatTitle) async {
    await functions.httpsCallable(createShuffleSeatCommand).call(
      <String, dynamic>{
        'seatTitle': seatTitle,
      },
    );
  }

  Future<void> deleteLatestSeatingChart() async {
    await functions.httpsCallable(deleteLatestSeatCommand).call();
  }
}
