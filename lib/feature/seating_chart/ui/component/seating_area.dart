import 'package:engineer_circle/feature/seating_chart/ui/component/horizontal_seating_layout.dart';
import 'package:engineer_circle/feature/seating_chart/ui/component/vertical_seating_layout.dart';
import 'package:flutter/material.dart';

class SeatingArea extends StatelessWidget {
  const SeatingArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: listColumn(),
      ),
    );
  }

  List<Widget> listColumn() {
    final int sideSeatCounts = 3;
    final int seatId = 1;

    List<Widget> _listColumn = [];
    for (int j = 0; j < 4; j++) {
      List<Widget> _listRow = [];
      for (int i = 0; i < 3; i++) {
        _listRow.add(
          (i % 2 == j % 2)
              ? Padding(
                  padding: const EdgeInsets.all(16),
                  child: HorizontalSeatingLayout(
                    tableId: 1,
                    firstSeatId: i,
                    sideSeatCounts: sideSeatCounts,
                    onSeatSelected: (seatId) {
                      print('@@@@@Tap: $i, seatId: $seatId');
                    },
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(16),
                  child: VerticalSeatingLayout(
                    tableId: 2,
                    firstSeatId: i,
                    sideSeatCounts: sideSeatCounts,
                    onSeatSelected: (seatId) {
                      print('@@@@@Tap: $i, seatId: $seatId');
                    },
                  ),
                ),
        );
      }
      _listColumn.add(
        Row(
          children: _listRow,
        ),
      );
    }

    return _listColumn;
  }
}
