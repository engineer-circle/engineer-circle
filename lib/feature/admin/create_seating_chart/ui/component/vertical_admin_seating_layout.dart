import 'package:flutter/material.dart';
import 'dart:math' as Math;

class VerticalAdminSeatingLayout extends StatelessWidget {
  const VerticalAdminSeatingLayout({
    super.key,
    required this.tableId,
    required this.sideSeatCounts,
    required this.usableLayoutWidth,
  });

  final int tableId;
  final int sideSeatCounts;
  final double usableLayoutWidth;

  static const double seatMaxWidth = 28;
  static const double tableWidth = 40;
  static const double horizontalPadding = 4;
  static const double seatPadding = 1;

  @override
  Widget build(BuildContext context) {
    final double seatWidth = Math.min(
      seatMaxWidth,
      (usableLayoutWidth -
              horizontalPadding * 2 -
              tableWidth -
              (seatPadding * 4)) /
          2,
    );
    final double tableHeight =
        seatWidth * sideSeatCounts + (seatPadding * 2 * sideSeatCounts);

    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: horizontalPadding, vertical: 8),
      child: Row(
        children: [
          _buildSeatRow(seatWidth, sideSeatCounts),
          _buildTable(tableHeight),
          _buildSeatRow(seatWidth, sideSeatCounts),
        ],
      ),
    );
  }

  Widget _buildSeatRow(double seatWidth, int count) {
    return Column(
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

  Widget _buildTable(double height) {
    return Container(
      width: tableWidth,
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 4),
      color: Colors.grey[300],
      child: Center(
        child: Text('$tableId'),
      ),
    );
  }
}
