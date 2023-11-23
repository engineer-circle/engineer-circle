import 'package:engineer_circle/feature/admin/create_seating_chart/state/component_state/create_seat.dart';
import 'package:engineer_circle/feature/seating_chart/state/component_state/seat_group.dart';
import 'package:engineer_circle/feature/seating_chart/state/seating_chart_state.dart';
import 'package:engineer_circle/feature/seating_chart/state/seating_chart_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seatingChartProvider = Provider(
  (ref) => SeatingChartController(ref: ref),
);

class SeatingChartController {
  SeatingChartController({
    required Ref ref,
  }) : _ref = ref;

  final Ref _ref;

  Future<void> init() async {
    // TODO: Remoteから取得する
    final seatingChart = SeatingChartStateSuccess(
      seatGroupMatrix: List.generate(
        4,
        (rowIndex) {
          return List.generate(
            3,
            (columnIndex) => SeatGroup(
              row: rowIndex,
              column: columnIndex,
              seatOrientation: rowIndex % 2 == 0
                  ? SeatOrientation.horizontal
                  : SeatOrientation.vertical,
              seats: List.generate(
                4,
                (seatIndex) => Seat(
                  seatId: '$rowIndex-$columnIndex-$seatIndex',
                ),
              ),
            ),
          );
        },
      ),
    );

    _ref
        .read(seatingChartStateProvider.notifier)
        .initSeatingChart(seatingChart);
  }
}
