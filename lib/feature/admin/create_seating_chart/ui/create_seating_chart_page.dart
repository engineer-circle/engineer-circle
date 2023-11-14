import 'package:collection/collection.dart';
import 'package:engineer_circle/feature/admin/create_seating_chart/state/component_state/create_seat.dart';
import 'package:engineer_circle/feature/admin/create_seating_chart/state/create_seating_chart_state_notifier.dart';
import 'package:engineer_circle/feature/admin/create_seating_chart/ui/component/horizontal_admin_seating_layout.dart';
import 'package:engineer_circle/feature/admin/create_seating_chart/ui/component/vertical_admin_seating_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
  void initState() {
    /// 画面表示後に実行
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(createSeatingChartStateProvider.notifier).init();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final seatState = ref.watch(createSeatingChartStateProvider);

    // 画面の幅を取得
    final screenWidth = MediaQuery.of(context).size.width;
    final usableScreenWidth =
        screenWidth - horizontalScreenPadding * 2 - plusIconSize;

    final seatsGroupedByRow =
        groupBy(seatState.seats, (CreateSeat seat) => seat.row);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalScreenPadding, vertical: 16),
          child: Column(
            children: [
              ...buildSeatRows(
                seatsGroupedByRow,
                usableScreenWidth,
                (row) => ref
                    .read(createSeatingChartStateProvider.notifier)
                    .addColumn(
                      row,
                      4,
                      SeatingOrientation.horizontal,
                    ),
              ),
              const SizedBox(height: 16),
              InkWell(
                onTap: () =>
                    ref.read(createSeatingChartStateProvider.notifier).addRow(
                          4,
                          SeatingOrientation.horizontal,
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
    Map<int, List<CreateSeat>> seatsGroupedByRow,
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

  Widget _buildSeatWidget(CreateSeat seat, double layoutWidth) {
    switch (seat.seatingOrientation) {
      case SeatingOrientation.horizontal:
        return HorizontalAdminSeatingLayout(
          tableName: '${seat.row}-${seat.column}',
          sideSeatCounts: seat.seatCount,
          usableLayoutWidth: layoutWidth,
        );
      case SeatingOrientation.vertical:
        return VerticalAdminSeatingLayout(
          tableName: '${seat.row}-${seat.column}',
          sideSeatCounts: seat.seatCount,
          usableLayoutWidth: layoutWidth,
        );
    }
  }
}
