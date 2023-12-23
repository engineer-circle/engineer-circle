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

enum SeatSelectionMethod { free, shuffle }

extension SeatSelectionMethodExtension on SeatSelectionMethod {
  String get label {
    switch (this) {
      case SeatSelectionMethod.free:
        return '自由';
      case SeatSelectionMethod.shuffle:
        return 'シャッフル';
    }
  }
}
