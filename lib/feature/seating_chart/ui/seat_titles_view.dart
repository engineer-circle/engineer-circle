import 'package:engineer_circle/feature/seating_chart/controller/seat_titles_controller.dart';
import 'package:engineer_circle/feature/seating_chart/state/component_state/seat_titles_state.dart';
import 'package:engineer_circle/feature/seating_chart/state/component_state/seat_titles_view_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SeatTitlesView extends ConsumerStatefulWidget {
  const SeatTitlesView({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SeatTitlesViewState();
}

class _SeatTitlesViewState extends ConsumerState<SeatTitlesView> {
  @override
  void initState() {
    /// 画面表示後に実行
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(seatTitlesProvider).init();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final seatTitlesState = ref.watch(seatTitlesStateProvider);
    switch (seatTitlesState) {
      case SeatTitlesStateLoading _:
        return const Center(child: CircularProgressIndicator());
      case SeatTitlesStateFailure _:
        return Container();
      case SeatTitlesStateSuccess state:
        return ListView(
          children: state.titles
              .map(
                (title) => ListTile(
                  title: Text(title),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              )
              .toList(),
        );
    }
  }
}
