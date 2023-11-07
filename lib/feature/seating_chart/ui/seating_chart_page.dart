import 'package:engineer_circle/feature/seating_chart/ui/component/seating_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
      appBar: AppBar(),
      body: SeatingArea(),
    );
  }
}
