import 'package:engineer_circle/feature/seating_chart/ui/component/horizontal_seating_layout.dart';
import 'package:engineer_circle/feature/seating_chart/ui/component/vertical_seating_layout.dart';
import 'package:flutter/material.dart';

class SeatingArea extends StatelessWidget {
  const SeatingArea({super.key});

  @override
  Widget build(BuildContext context) {
    final int sideSeatCounts = 3;
    final int seatId = 1;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          HorizontalSeatingLayout(
            tableId: 1,
            firstSeatId: seatId,
            sideSeatCounts: sideSeatCounts,
            onSeatSelected: (seatId) {},
          ),
          const SizedBox(height: 20),
          VerticalSeatingLayout(
            tableId: 2,
            firstSeatId: seatId,
            sideSeatCounts: sideSeatCounts,
            onSeatSelected: (seatId) {},
          ),
        ],
      ),
    );
  }
}
