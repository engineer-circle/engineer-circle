import 'package:engineer_circle/feature/seating_chart/ui/component/seat_icon.dart';
import 'package:flutter/material.dart';

class VerticalSeatingLayout extends StatelessWidget {
  const VerticalSeatingLayout({
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
    // テーブルの高さを計算
    final double tableHeight =
        (iconSize * sideSeatCounts) + (iconPadding * 2 * sideSeatCounts);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 左側
        Column(
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
          height: tableHeight,
          color: Colors.grey[300],
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Text('テーブル$tableId'),
            ),
          ),
        ),

        // 右側
        Column(
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
