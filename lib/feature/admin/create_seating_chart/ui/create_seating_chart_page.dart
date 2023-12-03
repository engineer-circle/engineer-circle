import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:engineer_circle/domain/seat_orientation.dart';
import 'package:engineer_circle/feature/admin/create_seating_chart/state/component_state/create_seat_group.dart';
import 'package:engineer_circle/feature/admin/create_seating_chart/state/create_seating_chart_state_notifier.dart';
import 'package:engineer_circle/feature/admin/create_seating_chart/ui/component/horizontal_admin_seating_layout.dart';
import 'package:engineer_circle/feature/admin/create_seating_chart/ui/component/seating_arrangement_form.dart';
import 'package:engineer_circle/feature/admin/create_seating_chart/ui/component/vertical_admin_seating_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class CreateSeatingChartPage extends ConsumerStatefulWidget {
  const CreateSeatingChartPage({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateSeatingChartPageState();
}

class _CreateSeatingChartPageState
    extends ConsumerState<CreateSeatingChartPage> {
  final horizontalScreenPadding = 8.0;
  final plusIconSize = 24.0;

  @override
  Widget build(BuildContext context) {
    final seatState = ref.watch(createSeatingChartStateProvider);

    // 画面の幅を取得
    final screenWidth = MediaQuery.of(context).size.width;
    final usableScreenWidth =
        screenWidth - horizontalScreenPadding * 2 - plusIconSize;

    final seatsGroupedByRow =
        groupBy(seatState.seats, (CreateSeatGroup seat) => seat.row);

    return Scaffold(
      appBar: AppBar(
        title: const Text('座席表'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: InkWell(
              onTap: () {
                // TODO
              },
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Text('確定'),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalScreenPadding, vertical: 16),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Front',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              ...buildSeatRows(
                seatsGroupedByRow,
                usableScreenWidth,
                (row) => showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SeatingArrangementForm(
                      onRegistered: (
                          {required seatOrientation, required seatCount}) {
                        ref
                            .read(createSeatingChartStateProvider.notifier)
                            .addColumn(
                              row,
                              seatCount,
                              seatOrientation,
                            );
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              InkWell(
                onTap: () => showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SeatingArrangementForm(
                      onRegistered: (
                          {required seatOrientation, required seatCount}) {
                        ref
                            .read(createSeatingChartStateProvider.notifier)
                            .addRow(
                              seatCount,
                              seatOrientation,
                            );
                      },
                    );
                  },
                ),
                child: Icon(Icons.control_point, size: plusIconSize),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> buildSeatRows(
    Map<int, List<CreateSeatGroup>> seatsGroupedByRow,
    double usableScreenWidth,
    final Function(int) onCreateSeat,
  ) {
    return seatsGroupedByRow.entries.map((group) {
      final row = group.key;
      final seatsForCurrentRow = group.value;
      final currentRowWidgets = seatsForCurrentRow.map((seat) {
        return _buildSeatWidget(seat, usableScreenWidth / group.value.length);
      }).toList();

      final Widget plusIcon = InkWell(
        onTap: () => onCreateSeat(row),
        child: Icon(Icons.control_point, size: plusIconSize),
      );

      currentRowWidgets.add(plusIcon);

      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: currentRowWidgets,
      );
    }).toList();
  }

  Widget _buildSeatWidget(CreateSeatGroup seat, double layoutWidth) {
    switch (seat.seatOrientation) {
      case SeatOrientation.horizontal:
        return HorizontalAdminSeatingLayout(
          tableName: '${seat.row}-${seat.column}',
          sideSeatCounts: seat.seatCount,
          usableLayoutWidth: layoutWidth,
        );
      case SeatOrientation.vertical:
        return VerticalAdminSeatingLayout(
          tableName: '${seat.row}-${seat.column}',
          sideSeatCounts: seat.seatCount,
          usableLayoutWidth: layoutWidth,
        );
    }
  }
}
