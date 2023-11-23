import 'package:engineer_circle/feature/seating_chart/state/component_state/seat_group.dart';
import 'package:engineer_circle/feature/seating_chart/ui/component/seat_icon.dart';
import 'package:flutter/material.dart';

class VerticalSeatingLayout extends StatelessWidget {
  const VerticalSeatingLayout({
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
    // テーブルの高さを計算
    final double tableHeight =
        (iconSize * sideSeatCounts) + (iconPadding * 2 * sideSeatCounts);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 左側
        Column(
          children: List.generate(sideSeatCounts, (index) {
            final seat = seats[index];
            return Padding(
              padding: EdgeInsets.all(iconPadding),
              child: SeatIcon(
                seatId: seat.seatId,
                iconSize: iconSize,
                onSeatSelected: onSeatSelected,
              ),
            );
          }),
        ),

        // テーブル
        Container(
          height: tableHeight,
          color: Colors.grey[300],
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text('テーブル$tableId'),
            ),
          ),
        ),

        // 右側
        Column(
          children: List.generate(sideSeatCounts, (index) {
            final seat = seats[index + sideSeatCounts];
            return Padding(
              padding: EdgeInsets.all(iconPadding),
              child: SeatIcon(
                seatId: seat.seatId,
                iconSize: iconSize,
                onSeatSelected: onSeatSelected,
              ),
            );
          }),
        ),
      ],
    );
  }
}
