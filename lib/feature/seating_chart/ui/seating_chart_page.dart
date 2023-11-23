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
  final _controllerX = ScrollController();
  final _controllerY = ScrollController();

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
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _controllerY,
            child: SingleChildScrollView(
              controller: _controllerX,
              scrollDirection: Axis.horizontal,
              child: SeatingArea(),
            ),
          ),

          // 斜めスクロールするためのListener
          Listener(
            behavior: HitTestBehavior
                .translucent, // 背後にあるターゲットもイベントを受け取ることを許可する(内部のComponentのonTapを検知させたいため)
            child: const SizedBox(
              width: double.infinity,
              height: double.infinity,
            ),
            onPointerMove: (event) {
              // ポインターの移動方向と逆方向にスクロールさせる。左にスワイプするときにビューが右に動く。
              _controllerX.jumpTo(_controllerX.offset + (event.delta.dx * -1));
              _controllerY.jumpTo(_controllerY.offset + (event.delta.dy * -1));
            },
          )
        ],
      ),
    );
  }
}
