import 'package:engineer_circle/domain/seat_group.dart';
import 'package:engineer_circle/feature/seating_chart/state/component_state/seat_group_view_property.dart';
import 'package:engineer_circle/feature/seating_chart/state/seating_chart_state.dart';
import 'package:engineer_circle/infrastructure/repository/seating_chart_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seatingChartUseCaseProvider = Provider(
  (ref) => SeatingChartUseCase(
    repository: ref.watch(seatingChartRepositoryProvider),
  ),
);

class SeatingChartUseCase {
  SeatingChartUseCase({
    required this.repository,
  });

  final SeatingChartRepository repository;

  Future<SeatingChartStateSuccess> getLatest() async {
    final seatingChart = await repository.getLatest();

    final seatGroupMatrix = seatingChart.seats
        .fold<List<List<SeatGroupViewProperty>>>([],
            (previousValue, seatGroup) {
      final value = _toSeatGroupViewProperty(seatGroup);
      if (previousValue.isEmpty ||
          previousValue.last.last.row != seatGroup.row) {
        previousValue.add([value]);
      } else {
        previousValue.last.add(value);
      }
      return previousValue;
    });

    final seatTitles = await repository.getTitles();

    return SeatingChartStateSuccess(
      seatGroupMatrix: seatGroupMatrix,
      seatTitles: seatTitles,
      currentSeatTitle: seatingChart.title,
    );
  }

  SeatGroupViewProperty _toSeatGroupViewProperty(SeatGroup seatGroup) {
    return SeatGroupViewProperty(
      groupId: seatGroup.groupId,
      row: seatGroup.row,
      column: seatGroup.column,
      seatOrientation: seatGroup.seatOrientation,
      seats: seatGroup.seats.map(
        (seat) {
          return SeatViewProperty(
            seatId: seat.seatId,
            isSeated: seat.isSeated,
            user: null,
          );
        },
      ).toList(),
    );
  }
}
