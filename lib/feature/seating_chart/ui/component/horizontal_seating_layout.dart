import 'package:engineer_circle/feature/seating_chart/ui/component/seat_icon.dart';
import 'package:flutter/material.dart';

class HorizontalSeatingLayout extends StatelessWidget {
  const HorizontalSeatingLayout({
    super.key,
    required this.tableId,
    required this.firstSeatId,
    required this.sideSeatCounts,
    required this.onSeatSelected,
  });

  final int tableId;
  final int firstSeatId;
  final int sideSeatCounts;
  final Function(int) onSeatSelected;

  final double iconSize = 40;
  final double iconPadding = 8;

  @override
  Widget build(BuildContext context) {
    final double tableWidth =
        (iconSize * sideSeatCounts) + (iconPadding * 2 * sideSeatCounts);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 上部
        Row(
          children: List.generate(sideSeatCounts, (index) {
            final seatId = firstSeatId + index;
            return Padding(
              padding: EdgeInsets.all(iconPadding),
              child: SeatIcon(
                seatId: seatId,
                iconSize: iconSize,
                onSeatSelected: onSeatSelected,
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
            final seatId = firstSeatId + sideSeatCounts + index;
            return Padding(
              padding: EdgeInsets.all(iconPadding),
              child: SeatIcon(
                seatId: seatId,
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
