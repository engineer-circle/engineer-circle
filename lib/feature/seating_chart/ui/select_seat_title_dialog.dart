import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:engineer_circle/feature/seating_chart/controller/seat_titles_controller.dart';
import 'package:engineer_circle/feature/seating_chart/state/seat_titles_state.dart';
import 'package:engineer_circle/feature/seating_chart/state/seat_titles_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectSeatTitleDialog extends ConsumerStatefulWidget {
  const SelectSeatTitleDialog({
    super.key,
    required this.onTitleSelected,
  });

  final Function(DocumentReference docRef) onTitleSelected;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SelectSeatTitleDialogState();
}

class _SelectSeatTitleDialogState extends ConsumerState<SelectSeatTitleDialog> {
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
    return AlertDialog(
      content: SizedBox(
        width: double.maxFinite,
        height: 300,
        child: _dialogContent(seatTitlesState),
      ),
    );
  }

  Widget _dialogContent(SeatTitlesState seatTitlesState) {
    switch (seatTitlesState) {
      case SeatTitlesStateLoading _:
        return const Center(child: CircularProgressIndicator());
      case SeatTitlesStateFailure _:
        return Container();
      case SeatTitlesStateSuccess state:
        return ListView(
          children: state.titles
              .map(
                (titleViewProperty) => ListTile(
                  title: Text(titleViewProperty.title),
                  onTap: () {
                    widget.onTitleSelected(titleViewProperty.docRef);
                  },
                ),
              )
              .toList(),
        );
    }
  }
}
