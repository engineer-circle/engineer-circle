import 'package:engineer_circle/feature/profile/state/component_state/profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat_group.freezed.dart';

@freezed
class SeatGroup with _$SeatGroup {
  const factory SeatGroup({
    required int row,
    required int column,
    required List<Seat> seats,
  }) = _SeatGroup;

  const SeatGroup._();
}

@freezed
class Seat with _$Seat {
  const factory Seat({
    required String seatId,
    @Default(false) bool isSeated,
    Profile? user,
  }) = _Seat;

  const Seat._();
}
