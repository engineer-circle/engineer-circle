import 'package:engineer_circle/domain/create_seating_chart.dart';
import 'package:engineer_circle/domain/seat_group.dart';
import 'package:engineer_circle/infrastructure/repository/admin_seating_chart_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final adminSeatingChartUseCaseProvider = Provider(
  (ref) => AdminSeatingChartUseCase(
    repository: ref.watch(adminSeatingChartRepositoryProvider),
  ),
);

class AdminSeatingChartUseCase {
  AdminSeatingChartUseCase({
    required this.repository,
  });

  final AdminSeatingChartRepository repository;

  Future<void> createSeatingChart(
    String title,
    List<SeatGroup> seats,
  ) async {
    final seatingChart =
        CreateSeatingChart(seatTitle: title, seatGroupList: seats);
    repository.createSeatingChart(seatingChart);
  }

  Future<void> createShuffleSeatingChart(String seatName) async {
    repository.createShuffleSeatingChart(seatName);
  }
}
