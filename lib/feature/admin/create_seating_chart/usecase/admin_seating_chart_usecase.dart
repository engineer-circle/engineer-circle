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
    final seatingChart = CreateSeatingChart(
        seatTitle: title, seatGroupList: _sortSeatGroups(seats));
    repository.createSeatingChart(seatingChart);
  }

  Future<void> createShuffleSeatingChart(String seatName) async {
    repository.createShuffleSeatingChart(seatName);
  }

  List<SeatGroup> _sortSeatGroups(List<SeatGroup> seatGroups) {
    final mutableSeatGroups = List<SeatGroup>.from(seatGroups);
    mutableSeatGroups.sort((a, b) {
      // 先にrowで比較
      final rowComparison = a.row.compareTo(b.row);
      if (rowComparison != 0) {
        return rowComparison;
      }

      // rowが同じ場合はcolumnで比較
      return a.column.compareTo(b.column);
    });

    return mutableSeatGroups;
  }
}
