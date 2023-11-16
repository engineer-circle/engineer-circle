import 'package:engineer_circle/feature/admin/create_seating_chart/state/component_state/create_seat.dart';
import 'package:engineer_circle/feature/admin/create_seating_chart/state/create_seating_chart_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final createSeatingChartStateProvider = StateNotifierProvider.autoDispose<
    CreateSeatingChartStateNotifier, CreateSeatingChartState>(
  (ref) => CreateSeatingChartStateNotifier(),
);

class CreateSeatingChartStateNotifier
    extends StateNotifier<CreateSeatingChartState> {
  CreateSeatingChartStateNotifier() : super(CreateSeatingChartState());

  void init() {
    state = state.copyWith(seats: [
      CreateSeat(
          row: 1,
          column: 1,
          seatCount: 4,
          seatOrientation: SeatOrientation.horizontal),
      CreateSeat(
          row: 1,
          column: 2,
          seatCount: 3,
          seatOrientation: SeatOrientation.horizontal),
      CreateSeat(
          row: 1,
          column: 3,
          seatCount: 4,
          seatOrientation: SeatOrientation.horizontal),
      CreateSeat(
          row: 1,
          column: 4,
          seatCount: 4,
          seatOrientation: SeatOrientation.horizontal),
      CreateSeat(
          row: 2,
          column: 1,
          seatCount: 4,
          seatOrientation: SeatOrientation.horizontal),
      CreateSeat(
          row: 2,
          column: 2,
          seatCount: 4,
          seatOrientation: SeatOrientation.vertical),
      CreateSeat(
          row: 3,
          column: 1,
          seatCount: 4,
          seatOrientation: SeatOrientation.vertical),
    ]);
  }

  void addColumn(
    int selectedRow,
    int seatCount,
    SeatOrientation seatOrientation,
  ) {
    final endSeat =
        state.seats.lastWhere((element) => element.row == selectedRow);

    final newSeats = [
      ...state.seats,
      CreateSeat(
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
    final bottomSeatRow = state.seats
        .reduce((value, element) => element.row > value.row ? element : value)
        .row;
    final newSeats = [
      ...state.seats,
      CreateSeat(
        row: bottomSeatRow + 1,
        column: 1,
        seatCount: seatCount,
        seatOrientation: seatOrientation,
      ),
    ];

    state = state.copyWith(seats: newSeats);
  }
}