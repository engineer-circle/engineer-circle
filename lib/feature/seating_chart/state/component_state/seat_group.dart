import 'package:engineer_circle/feature/admin/create_seating_chart/state/component_state/create_seat.dart';
import 'package:engineer_circle/feature/profile/state/component_state/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat_group.freezed.dart';

@freezed
class SeatGroup with _$SeatGroup {
  const factory SeatGroup({
    required String groupId,
    required int row,
    required int column,
    required SeatOrientation seatOrientation,
    required List<Seat> seats,
  }) = _SeatGroup;

  const SeatGroup._();
}

@freezed
class Seat with _$Seat {
  const factory Seat({
    required String seatId,
    @Default(false) bool isSeated,
    User? user,
  }) = _Seat;

  const Seat._();
}
