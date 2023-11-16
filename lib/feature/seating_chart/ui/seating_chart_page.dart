import 'package:auto_route/auto_route.dart';
import 'package:engineer_circle/feature/drawer/drawer.dart';
import 'package:engineer_circle/feature/seating_chart/ui/component/seating_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class SeatingChartPage extends ConsumerStatefulWidget {
  const SeatingChartPage({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SeatingChartPageState();
}

class _SeatingChartPageState extends ConsumerState<SeatingChartPage> {
  @override
  void initState() {
    /// 画面表示後に実行
    WidgetsBinding.instance.addPostFrameCallback((_) {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム'),
      ),
      drawer: const AppDrawer(),
      body: SeatingArea(),
    );
  }
}
