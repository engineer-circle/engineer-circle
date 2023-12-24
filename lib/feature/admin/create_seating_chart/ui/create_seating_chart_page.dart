import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:engineer_circle/app/router/app_router.dart';
import 'package:engineer_circle/domain/seat_orientation.dart';
import 'package:engineer_circle/domain/seat_group.dart';
import 'package:engineer_circle/feature/admin/create_seating_chart/controller/create_seating_chart_controller.dart';
import 'package:engineer_circle/feature/admin/create_seating_chart/state/create_seating_chart_state_notifier.dart';
import 'package:engineer_circle/feature/admin/create_seating_chart/ui/component/horizontal_admin_seating_layout.dart';
import 'package:engineer_circle/feature/admin/create_seating_chart/ui/component/seating_arrangement_form.dart';
import 'package:engineer_circle/feature/admin/create_seating_chart/ui/component/vertical_admin_seating_layout.dart';
import 'package:engineer_circle/feature/notification/simple_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class CreateSeatingChartPage extends ConsumerStatefulWidget {
  const CreateSeatingChartPage({
    super.key,
    required this.seatTitle,
  });

  final String seatTitle;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateSeatingChartPageState();
}

class _CreateSeatingChartPageState
    extends ConsumerState<CreateSeatingChartPage> {
  final horizontalScreenPadding = 8.0;
  final tapIconSize = 24.0;

  @override
  void initState() {
    /// 画面表示後に実行
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(createSeatingChartStateProvider.notifier).init(widget.seatTitle);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final seatState = ref.watch(createSeatingChartStateProvider);

    // 画面の幅を取得
    final screenWidth = MediaQuery.of(context).size.width;
    final usableScreenWidth =
        screenWidth - horizontalScreenPadding * 2 - tapIconSize;

    final seatsGroupedByRow =
        groupBy(seatState.seats, (SeatGroup seat) => seat.row);

    return Scaffold(
      appBar: AppBar(
        title: const Text('座席表'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (dialogContext) {
                    return SimpleAlertDialog(
                      message: '座席表を作成します',
                      onConfirm: () {
                        Navigator.of(dialogContext).pop();
                        ref.read(createSeatingChartProvider).createSeatingChart(
                              title: seatState.title,
                              seats: seatState.seats,
                              onSuccess: () {
                                if (!mounted) return;
                                context.router.replaceAll(
                                  [const RootRoute()],
                                );
                              },
                            );
                      },
                      onCancel: () => Navigator.of(dialogContext).pop(),
                    );
                  },
                );
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
                seatsGroupedByRow: seatsGroupedByRow,
                usableScreenWidth: usableScreenWidth,
                onCreateSeat: (row) => showModalBottomSheet(
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
                onDeleteSeat: (row) {
                  showDialog(
                    context: context,
                    builder: (dialogContext) {
                      return SimpleAlertDialog(
                        message: '座席を削除しますか?',
                        onConfirm: () {
                          Navigator.of(dialogContext).pop();
                          ref
                              .read(createSeatingChartStateProvider.notifier)
                              .removeColumn(row);
                        },
                        onCancel: () => Navigator.of(dialogContext).pop(),
                      );
                    },
                  );
                },
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
                child: Icon(Icons.control_point, size: tapIconSize),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> buildSeatRows({
    required Map<int, List<SeatGroup>> seatsGroupedByRow,
    required double usableScreenWidth,
    required final Function(int) onCreateSeat,
    required final Function(int) onDeleteSeat,
  }) {
    return seatsGroupedByRow.entries.map((group) {
      final row = group.key;
      final seatsForCurrentRow = group.value;
      final currentRowWidgets = seatsForCurrentRow.map((seat) {
        return _buildSeatWidget(seat, usableScreenWidth / group.value.length);
      }).toList();

      final Widget plusIcon = InkWell(
        onTap: () => onCreateSeat(row),
        child: Icon(Icons.control_point, size: tapIconSize),
      );

      final Widget minusIcon = InkWell(
        onTap: () => onDeleteSeat(row),
        child: Icon(Icons.cancel, size: tapIconSize),
      );

      currentRowWidgets.add(
        Column(
          children: [
            plusIcon,
            const SizedBox(height: 12),
            minusIcon,
          ],
        ),
      );

      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: currentRowWidgets,
      );
    }).toList();
  }

  Widget _buildSeatWidget(SeatGroup seat, double layoutWidth) {
    switch (seat.seatOrientation) {
      case SeatOrientation.horizontal:
        return HorizontalAdminSeatingLayout(
          tableName: '${seat.row}-${seat.column}',
          seatCount: seat.seatCount,
          usableLayoutWidth: layoutWidth,
        );
      case SeatOrientation.vertical:
        return VerticalAdminSeatingLayout(
          tableName: '${seat.row}-${seat.column}',
          seatCount: seat.seatCount,
          usableLayoutWidth: layoutWidth,
        );
    }
  }
}
