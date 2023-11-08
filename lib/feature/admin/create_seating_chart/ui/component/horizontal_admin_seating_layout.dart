import 'package:flutter/material.dart';
import 'dart:math' as Math;

class HorizontalAdminSeatingLayout extends StatelessWidget {
  const HorizontalAdminSeatingLayout({
    super.key,
    required this.tableName,
    required this.sideSeatCounts,
    required this.usableLayoutWidth,
  });

  final String tableName;
  final int sideSeatCounts;
  final double usableLayoutWidth;

  static const double tableMaxWidth = 120;
  static const double seatMaxWidth = 28;
  static const double horizontalPadding = 4;
  static const double seatPadding = 1;
  static const int rowSeatsLimitCount = 4; // 1行に最大表示できる座席

  @override
  Widget build(BuildContext context) {
    final double tableWidth =
        Math.min(tableMaxWidth, usableLayoutWidth - horizontalPadding * 2);
    final double seatWidth = Math.min(
        seatMaxWidth, (tableWidth / rowSeatsLimitCount) - seatPadding * 2);

    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: horizontalPadding, vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildSeatRow(seatWidth, sideSeatCounts),
          _buildTable(tableWidth),
          _buildSeatRow(seatWidth, sideSeatCounts),
        ],
      ),
    );
  }

  Widget _buildSeatRow(double seatWidth, int sideSeatCounts) {
    return sideSeatCounts > rowSeatsLimitCount
        ? Text('$sideSeatCounts席')
        : Row(
            children: List.generate(sideSeatCounts, (index) {
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
        child: Text(tableName),
      ),
    );
  }
}
