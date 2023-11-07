import 'package:flutter/material.dart';

class SeatIcon extends StatelessWidget {
  const SeatIcon({
    super.key,
    required this.seatId,
    required this.iconSize,
    required this.onSeatSelected,
  });

  final int seatId;
  final double iconSize;
  final Function(int) onSeatSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: iconSize,
      height: iconSize,
      child: InkWell(
        onTap: () => onSeatSelected(seatId),
        child: CircleAvatar(
          child: Text('$seatId'),
        ),
      ),
    );
  }
}
