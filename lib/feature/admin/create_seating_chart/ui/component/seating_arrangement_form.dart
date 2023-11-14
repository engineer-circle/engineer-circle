import 'package:engineer_circle/feature/admin/create_seating_chart/state/component_state/create_seat.dart';
import 'package:flutter/material.dart';

class SeatingArrangementForm extends StatefulWidget {
  const SeatingArrangementForm({
    Key? key,
    required this.onRegistered,
  }) : super(key: key);

  final Function({
    required SeatOrientation seatOrientation,
    required int seatCount,
  }) onRegistered;

  @override
  State<SeatingArrangementForm> createState() => _SeatingArrangementFormState();
}

class _SeatingArrangementFormState extends State<SeatingArrangementForm> {
  static const List<int> seatCounts = [2, 4, 6, 8, 10, 12];

  SeatOrientation? _selectedSeatOrientation;
  int? _selectedSeatCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            '座席の並び',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 4),
          DropdownButtonFormField<SeatOrientation>(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
            items: SeatOrientation.values.map((SeatOrientation value) {
              return DropdownMenuItem<SeatOrientation>(
                value: value,
                child: Text(value.label),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                _selectedSeatOrientation = newValue;
              });
            },
            value: _selectedSeatOrientation,
          ),
          const SizedBox(height: 12),
          const Text(
            '座席数',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 4),
          DropdownButtonFormField<int>(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
            items: seatCounts.map((int value) {
              return DropdownMenuItem<int>(
                value: value,
                child: Text(value.toString()),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                _selectedSeatCount = newValue;
              });
            },
            value: _selectedSeatCount,
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed:
                  _selectedSeatOrientation != null && _selectedSeatCount != null
                      ? () {
                          widget.onRegistered(
                            seatOrientation: _selectedSeatOrientation!,
                            seatCount: _selectedSeatCount!,
                          );
                          Navigator.of(context).pop();
                        }
                      : null,
              child: const Text('決定'),
            ),
          ),
        ],
      ),
    );
  }
}
