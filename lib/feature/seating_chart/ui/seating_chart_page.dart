import 'package:auto_route/auto_route.dart';
import 'package:engineer_circle/feature/drawer/drawer.dart';
import 'package:engineer_circle/feature/profile/ui/component/profile_content.dart';
import 'package:engineer_circle/feature/seating_chart/controller/seating_chart_controller.dart';
import 'package:engineer_circle/feature/seating_chart/state/seating_chart_state.dart';
import 'package:engineer_circle/feature/seating_chart/state/seating_chart_state_notifier.dart';
import 'package:engineer_circle/feature/seating_chart/ui/component/seating_area.dart';
import 'package:engineer_circle/global/url_launcher.dart';
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(seatingChartProvider).init();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(seatingChartStateProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: InkWell(
              onTap: () {
                // TOOD: リロード
              },
              child: const Icon(Icons.autorenew, size: 32),
            ),
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: _body(state),
    );
  }

  Widget _body(SeatingChartState seatingChartState) {
    switch (seatingChartState) {
      case SeatingChartStateLoading _:
        return Center(
          child: CircularProgressIndicator(
            color: Theme.of(context).colorScheme.primary,
          ),
        );

      case SeatingChartStateFailure _:
        return const Center(
          child: Text('座席表の取得に失敗しました'),
        );

      case SeatingChartStateSuccess state:
        return Stack(
          children: [
            SingleChildScrollView(
              controller: _controllerY,
              child: SingleChildScrollView(
                controller: _controllerX,
                scrollDirection: Axis.horizontal,
                child: SeatingArea(
                  seatGroupMatrix: state.seatGroupMatrix,
                  onSeatSelected: (seatId) {
                    // TODO: ダイアログ
                  },
                  onUserSelected: (user) => showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    useSafeArea: true,
                    builder: (BuildContext context) {
                      return ProfileContent(
                          profile: user,
                          onTwitterPressed: (url) async {
                            await ref.read(urlLauncherProvider).launch(url);
                          },
                          onMusubitePressed: (url) async {
                            await ref.read(urlLauncherProvider).launch(url);
                          });
                    },
                  ),
                ),
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
                _controllerX
                    .jumpTo(_controllerX.offset + (event.delta.dx * -1));
                _controllerY
                    .jumpTo(_controllerY.offset + (event.delta.dy * -1));
              },
            )
          ],
        );
    }
  }
}
