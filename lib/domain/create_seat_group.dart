import 'package:engineer_circle/domain/seat_orientation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_seat_group.freezed.dart';
part 'create_seat_group.g.dart';

@freezed
class CreateSeatGroup with _$CreateSeatGroup {
  @JsonSerializable(explicitToJson: true)
  const factory CreateSeatGroup({
    required String groupId,
    required int row,
    required int column,
    required int seatCount,
    required SeatOrientation seatOrientation,
    required List<CreateSeat> seats,
  }) = _CreateSeatGroup;

  const CreateSeatGroup._();

  factory CreateSeatGroup.fromJson(Map<String, dynamic> json) =>
      _$CreateSeatGroupFromJson(json);
}

@freezed
class CreateSeat with _$CreateSeat {
  const factory CreateSeat({
    required String seatId,
    String? userId,
    @Default(false) bool isSeated,
  }) = _CreateSeat;

  const CreateSeat._();

  factory CreateSeat.fromJson(Map<String, dynamic> json) =>
      _$CreateSeatFromJson(json);
}
