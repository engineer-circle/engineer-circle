import 'package:engineer_circle/domain/seat_orientation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_seat_group.freezed.dart';

@freezed
class CreateSeatGroup with _$CreateSeatGroup {
  const factory CreateSeatGroup({
    required String groupId,
    required int row,
    required int column,
    required int seatCount,
    required SeatOrientation seatOrientation,
  }) = _CreateSeatGroup;

  const CreateSeatGroup._();
}
