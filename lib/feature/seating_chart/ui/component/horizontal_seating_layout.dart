import 'package:engineer_circle/feature/seating_chart/state/component_state/seat_group.dart';
import 'package:engineer_circle/feature/seating_chart/ui/component/seat_icon.dart';
import 'package:flutter/material.dart';

class HorizontalSeatingLayout extends StatelessWidget {
  const HorizontalSeatingLayout({
    super.key,
    required this.tableId,
    required this.seats,
    required this.onSeatSelected,
  });

  final String tableId;
  final List<Seat> seats;
  final Function(String) onSeatSelected;

  final double iconSize = 40;
  final double iconPadding = 8;

  @override
  Widget build(BuildContext context) {
    final int sideSeatCounts = (seats.length) ~/ 2;
    final double tableWidth =
        (iconSize * sideSeatCounts) + (iconPadding * 2 * sideSeatCounts);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 上部
        Row(
          children: List.generate(sideSeatCounts, (index) {
            final seat = seats[index];
            return Padding(
              padding: EdgeInsets.all(iconPadding),
              child: SeatIcon(
                avatarUrl: seat.user?.avatarUrl,
                isSeated: seat.isSeated,
                onSeatSelected: () => onSeatSelected(seat.seatId),
              ),
            );
          }),
        ),

        // テーブル
        Container(
          width: tableWidth,
          padding: const EdgeInsets.symmetric(
            vertical: 16.0,
          ),
          color: Colors.grey[300],
          child: Center(
            child: Text('テーブル$tableId'),
          ),
        ),

        // 下部
        Row(
          children: List.generate(sideSeatCounts, (index) {
            final seat = seats[index + sideSeatCounts];
            return Padding(
              padding: EdgeInsets.all(iconPadding),
              child: SeatIcon(
                avatarUrl: seat.user?.avatarUrl,
                isSeated: seat.isSeated,
                onSeatSelected: () => onSeatSelected(seat.seatId),
              ),
            );
          }),
        ),
      ],
    );
  }
}
