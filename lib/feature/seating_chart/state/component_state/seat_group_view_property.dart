import 'package:engineer_circle/domain/seat_orientation.dart';
import 'package:engineer_circle/domain/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat_group_view_property.freezed.dart';

@freezed
class SeatGroupViewProperty with _$SeatGroupViewProperty {
  const factory SeatGroupViewProperty({
    required String groupId,
    required int row,
    required int column,
    required SeatOrientation seatOrientation,
    required List<SeatViewProperty> seats,
  }) = _SeatGroupViewProperty;

  const SeatGroupViewProperty._();
}

@freezed
class SeatViewProperty with _$SeatViewProperty {
  const factory SeatViewProperty({
    required String seatId,
    @Default(false) bool isSeated,
    User? user,
  }) = _SeatViewProperty;

  const SeatViewProperty._();
}
