import 'package:engineer_circle/feature/seating_chart/state/seat_titles_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seatTitlesStateProvider =
    StateNotifierProvider.autoDispose<SeatTitlesStateNotifier, SeatTitlesState>(
  (ref) => SeatTitlesStateNotifier(),
);

class SeatTitlesStateNotifier extends StateNotifier<SeatTitlesState> {
  SeatTitlesStateNotifier() : super(SeatTitlesStateLoading());

  void updateTitlesSuccess(List<String> titles) {
    state = SeatTitlesStateSuccess(titles: titles);
  }

  void updateTitlesFailure() {
    state = SeatTitlesStateFailure();
  }
}
