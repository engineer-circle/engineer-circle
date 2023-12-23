import 'package:engineer_circle/feature/admin/initial_setup_seat/state/component_state/seat_selection_method.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'initial_setup_seat_state.freezed.dart';

@freezed
class InitialSetupSeatState with _$InitialSetupSeatState {
  const factory InitialSetupSeatState({
    SeatSelectionMethod? seatSelectionMethod,
    String? seatName,
  }) = _InitialSetupSeatState;

  const InitialSetupSeatState._();
}
