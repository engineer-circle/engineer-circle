import 'package:flutter/material.dart';
import 'dart:math' as Math;

class HorizontalAdminSeatingLayout extends StatelessWidget {
  const HorizontalAdminSeatingLayout({
    super.key,
    required this.tableId,
    required this.sideSeatCounts,
    required this.usableLayoutWidth,
  });

  final int tableId;
  final int sideSeatCounts;
  final double usableLayoutWidth;

  static const double horizontalPadding = 4;
  static const double seatPadding = 1;
  static const int rowSeatsLimitCount =
      4; // 1行に最大表示できるアイコン数  TODO: 5以上も対応できるようにしたい

  @override
  Widget build(BuildContext context) {
    final double tableMaxWidth =
        Math.min(usableLayoutWidth - horizontalPadding * 2, 160);
    final double seatMaxWidth =
        (tableMaxWidth / rowSeatsLimitCount) - seatPadding * 2;

    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: horizontalPadding, vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildSeatRow(seatMaxWidth, sideSeatCounts),
          _buildTable(tableMaxWidth),
          _buildSeatRow(seatMaxWidth, sideSeatCounts),
        ],
      ),
    );
  }

  Widget _buildSeatRow(double seatWidth, int count) {
    return Row(
      children: List.generate(count, (index) {
        return Padding(
          padding: const EdgeInsets.all(seatPadding),
          child: Container(
            width: seatWidth,
            height: seatWidth,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
        );
      }),
    );
  }

  Widget _buildTable(double width) {
    return Container(
      width: width,
      height: 40,
      padding: const EdgeInsets.symmetric(vertical: 4),
      color: Colors.grey[300],
      child: Center(
        child: Text('No.$tableId'),
      ),
    );
  }
}
