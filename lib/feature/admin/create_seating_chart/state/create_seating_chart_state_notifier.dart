import 'package:engineer_circle/feature/admin/create_seating_chart/state/component_state/create_seat_group.dart';
import 'package:engineer_circle/feature/admin/create_seating_chart/state/create_seating_chart_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final createSeatingChartStateProvider = StateNotifierProvider.autoDispose<
    CreateSeatingChartStateNotifier, CreateSeatingChartState>(
  (ref) => CreateSeatingChartStateNotifier(),
);

class CreateSeatingChartStateNotifier
    extends StateNotifier<CreateSeatingChartState> {
  CreateSeatingChartStateNotifier() : super(const CreateSeatingChartState());

  void addColumn(
    int selectedRow,
    int seatCount,
    SeatOrientation seatOrientation,
  ) {
    final endSeat =
        state.seats.lastWhere((element) => element.row == selectedRow);

    final newSeats = [
      ...state.seats,
      CreateSeatGroup(
        row: selectedRow,
        column: endSeat.column + 1,
        seatCount: seatCount,
        seatOrientation: seatOrientation,
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
    final newSeats = [
      ...state.seats,
      CreateSeatGroup(
        row: bottomSeatRow + 1,
        column: 1,
        seatCount: seatCount,
        seatOrientation: seatOrientation,
      ),
    ];

    state = state.copyWith(seats: newSeats);
  }
}
