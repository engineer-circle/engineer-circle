import 'package:engineer_circle/feature/admin/initial_setup_seat/state/component_state/seat_selection_method.dart';
import 'package:engineer_circle/feature/admin/initial_setup_seat/state/initial_setup_seat_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final initialSetupSeatStateProvider = StateNotifierProvider.autoDispose<
    InitialSetupSeatStateNotifier, InitialSetupSeatState>(
  (ref) => InitialSetupSeatStateNotifier(),
);

class InitialSetupSeatStateNotifier
    extends StateNotifier<InitialSetupSeatState> {
  InitialSetupSeatStateNotifier() : super(const InitialSetupSeatState());

  void updateSeatSelectionMethod(SeatSelectionMethod? seatSelectionMethod) {
    state = state.copyWith(seatSelectionMethod: seatSelectionMethod);
  }

  void updateSeatName(String seatName) {
    state = state.copyWith(seatName: seatName);
  }
}
