import 'package:engineer_circle/domain/seat_orientation.dart';
import 'package:engineer_circle/domain/seat_group.dart';
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
      SeatGroup(
        groupId: '$selectedRow-$nextColumn',
        row: selectedRow,
        column: nextColumn,
        seatCount: seatCount,
        seatOrientation: seatOrientation,
        seats: List.generate(seatCount, (seatIndex) {
          final endId = seatIndex + 1;
          return Seat(
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
      SeatGroup(
        groupId: '$nextRow-1',
        row: nextRow,
        column: 1,
        seatCount: seatCount,
        seatOrientation: seatOrientation,
        seats: List.generate(seatCount, (seatIndex) {
          final endId = seatIndex + 1;
          return Seat(seatId: '$nextRow-1-$endId');
        }),
      ),
    ];

    state = state.copyWith(seats: newSeats);
  }

  void removeColumn(int selectedRow) {
    // 選択された行の最後のSeatGroupを取得
    final lastSeatGroup = state.seats.lastWhere(
      (seatGroup) => seatGroup.row == selectedRow,
    );

    // 選択された行のSeatGroupの数を取得
    int seatGroupCount =
        state.seats.where((seatGroup) => seatGroup.row == selectedRow).length;

    // 選択された行の最後のSeatGroupを削除し、必要に応じて後続のSeatGroupの行番号を調整
    final List<SeatGroup> updatedSeats = state.seats
        .where((seatGroup) => seatGroup != lastSeatGroup)
        .map(
          (seatGroup) => _adjustRowForFollowingSeatGroups(
              seatGroup, selectedRow, seatGroupCount),
        )
        .toList();

    state = state.copyWith(seats: updatedSeats);
  }

  /// 選択された行のすべてのSeatGroupが削除される場合、後続のSeatGroupの行番号を調整する。
  /// 選択された行より下の行のSeatGroupの行番号をデクリメントする。
  SeatGroup _adjustRowForFollowingSeatGroups(
    SeatGroup seatGroup,
    int selectedRow,
    int seatGroupCount,
  ) {
    if (seatGroupCount == 1 && seatGroup.row > selectedRow) {
      return seatGroup.copyWith(
        groupId: '${seatGroup.row - 1}-${seatGroup.column}',
        row: seatGroup.row - 1,
      );
    }
    return seatGroup;
  }
}
