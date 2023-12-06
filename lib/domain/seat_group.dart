import 'package:engineer_circle/domain/seat_orientation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat_group.freezed.dart';
part 'seat_group.g.dart';

@freezed
class SeatGroup with _$SeatGroup {
  @JsonSerializable(explicitToJson: true)
  const factory SeatGroup({
    required String groupId,
    required int row,
    required int column,
    required int seatCount,
    required SeatOrientation seatOrientation,
    required List<Seat> seats,
  }) = _SeatGroup;

  const SeatGroup._();

  factory SeatGroup.fromJson(Map<String, dynamic> json) =>
      _$SeatGroupFromJson(json);
}

@freezed
class Seat with _$Seat {
  const factory Seat({
    required String seatId,
    @Default(false) bool isSeated,
    String? userId,
  }) = _Seat;

  const Seat._();

  factory Seat.fromJson(Map<String, dynamic> json) => _$SeatFromJson(json);
}
