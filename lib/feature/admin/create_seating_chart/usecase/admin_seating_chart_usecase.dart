import 'package:engineer_circle/domain/create_seat_group.dart';
import 'package:engineer_circle/domain/create_seating_chart.dart';
import 'package:engineer_circle/infrastructure/repository/admin_seating_chart_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

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
    List<CreateSeatGroup> seats,
  ) async {
    final formatter = DateFormat('yyyy-MM-dd-HH-mm');
    final now = DateTime.now();
    final docId = formatter.format(now);

    final seatingChart = CreateSeatingChart(title: title, seats: seats);
    repository.createSeatingChart(docId, seatingChart);
  }
}
