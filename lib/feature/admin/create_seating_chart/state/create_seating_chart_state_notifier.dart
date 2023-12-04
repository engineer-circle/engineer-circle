import 'package:engineer_circle/domain/seat_orientation.dart';
import 'package:engineer_circle/domain/create_seat_group.dart';
import 'package:engineer_circle/feature/admin/create_seating_chart/state/create_seating_chart_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final createSeatingChartStateProvider = StateNotifierProvider.autoDispose<
    CreateSeatingChartStateNotifier, CreateSeatingChartState>(
  (ref) => CreateSeatingChartStateNotifier(),
);

class CreateSeatingChartStateNotifier
    extends StateNotifier<CreateSeatingChartState> {
  CreateSeatingChartStateNotifier() : super(const CreateSeatingChartState());

  init(String title) {
    state = state.copyWith(title: title);
  }

  void addColumn(
    int selectedRow,
    int seatCount,
    SeatOrientation seatOrientation,
  ) {
    final endSeat =
        state.seats.lastWhere((element) => element.row == selectedRow);

    final nextColumn = endSeat.column + 1;
    final newSeats = [
      ...state.seats,
      CreateSeatGroup(
        groupId: '$selectedRow-$nextColumn',
        row: selectedRow,
        column: nextColumn,
        seatCount: seatCount,
        seatOrientation: seatOrientation,
        seats: List.generate(seatCount, (seatIndex) {
          final endId = seatIndex + 1;
          return CreateSeat(
            seatId: '$selectedRow-$nextColumn-$endId',
          );
        }),
      ),
    ];

    state = state.copyWith(seats: newSeats);
  }

  void addRow(
    int seatCount,
    SeatOrientation seatOrientation,
  ) {
    final bottomSeatRow = state.seats.isEmpty
        ? 0
        : state.seats
            .reduce(
                (value, element) => element.row > value.row ? element : value)
            .row;
    final nextRow = bottomSeatRow + 1;
    final newSeats = [
      ...state.seats,
      CreateSeatGroup(
        groupId: '$nextRow-1',
        row: nextRow,
        column: 1,
        seatCount: seatCount,
        seatOrientation: seatOrientation,
        seats: List.generate(seatCount, (seatIndex) {
          final endId = seatIndex + 1;
          return CreateSeat(seatId: '$nextRow-1-$endId');
        }),
      ),
    ];

    state = state.copyWith(seats: newSeats);
  }
}
