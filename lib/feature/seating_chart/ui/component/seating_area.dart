import 'package:engineer_circle/feature/admin/create_seating_chart/state/component_state/create_seat.dart';
import 'package:engineer_circle/feature/profile/state/component_state/user.dart';
import 'package:engineer_circle/feature/seating_chart/state/component_state/seat_group.dart';
import 'package:engineer_circle/feature/seating_chart/ui/component/horizontal_seating_layout.dart';
import 'package:engineer_circle/feature/seating_chart/ui/component/vertical_seating_layout.dart';
import 'package:flutter/material.dart';

class SeatingArea extends StatelessWidget {
  const SeatingArea({
    super.key,
    required this.seatGroupMatrix,
    required this.onSeatSelected,
    required this.onUserSelected,
  });

  final List<List<SeatGroup>> seatGroupMatrix;
  final Function(String seatId) onSeatSelected;
  final Function(User user) onUserSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Front',
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 8),
        ...seatGroupMatrix.map<Widget>(
          (rowSeatGroup) {
            return rowSeatWidget(rowSeatGroup);
          },
        ).toList(),
      ],
    );
  }

  Widget rowSeatWidget(List<SeatGroup> rowSeatGroup) {
    return Row(
      children: rowSeatGroup.map<Widget>((seatGroup) {
        switch (seatGroup.seatOrientation) {
          case SeatOrientation.horizontal:
            return Padding(
              padding: const EdgeInsets.all(16),
              child: HorizontalSeatingLayout(
                tableId: seatGroup.groupId,
                seats: seatGroup.seats,
                onSeatSelected: onSeatSelected,
                onUserSelected: onUserSelected,
              ),
            );
          case SeatOrientation.vertical:
            return Padding(
              padding: const EdgeInsets.all(16),
              child: VerticalSeatingLayout(
                tableId: seatGroup.groupId,
                seats: seatGroup.seats,
                onSeatSelected: onSeatSelected,
                onUserSelected: onUserSelected,
              ),
            );
          default:
            return Container(); // または、デフォルトのウィジェットを返す
        }
      }).toList(),
    );
  }
}
