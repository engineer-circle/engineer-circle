import 'package:engineer_circle/feature/admin/create_seating_chart/ui/component/horizontal_admin_seating_layout.dart';
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

  @override
  Widget build(BuildContext context) {
    // 画面の幅を取得
    double screenWidth = MediaQuery.of(context).size.width;
    double usableScreenWidth = screenWidth - horizontalScreenPadding * 2;

    int horizontalTableCount = 1; // TODO: 行ごとに動的にする

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalScreenPadding),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HorizontalAdminSeatingLayout(
                    tableId: 1,
                    sideSeatCounts: 4,
                    usableLayoutWidth: usableScreenWidth / horizontalTableCount,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
