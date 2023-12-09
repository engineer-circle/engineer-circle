import 'package:engineer_circle/feature/seating_chart/state/component_state/seat_title_view_property.dart';
import 'package:engineer_circle/feature/seating_chart/state/seat_titles_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seatTitlesStateProvider =
    StateNotifierProvider.autoDispose<SeatTitlesStateNotifier, SeatTitlesState>(
  (ref) => SeatTitlesStateNotifier(),
);

class SeatTitlesStateNotifier extends StateNotifier<SeatTitlesState> {
  SeatTitlesStateNotifier() : super(SeatTitlesStateLoading());

  void updateTitlesSuccess(List<SeatTitleViewProperty> titles) {
    state = SeatTitlesStateSuccess(titles: titles);
  }

  void updateTitlesFailure() {
    state = SeatTitlesStateFailure();
  }
}
