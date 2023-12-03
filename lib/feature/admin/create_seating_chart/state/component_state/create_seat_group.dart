import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_seat_group.freezed.dart';

@freezed
class CreateSeatGroup with _$CreateSeatGroup {
  const factory CreateSeatGroup({
    required int row,
    required int column,
    required int seatCount,
    required SeatOrientation seatOrientation,
  }) = _CreateSeatGroup;

  const CreateSeatGroup._();
}

enum SeatOrientation {
  horizontal, // 横並び
  vertical // 縦並び
}

extension SeatOrientationExtension on SeatOrientation {
  String get label {
    switch (this) {
      case SeatOrientation.horizontal:
        return '横並び';
      case SeatOrientation.vertical:
        return '縦並び';
    }
  }
}
