import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_seat.freezed.dart';

@freezed
class CreateSeat with _$CreateSeat {
  const factory CreateSeat({
    required int row,
    required int column,
    required int seatCount,
    required SeatingOrientation seatingOrientation,
  }) = _CreateSeat;

  const CreateSeat._();
}

enum SeatingOrientation {
  horizontal, // 横並び
  vertical // 縦並び
}

extension SeatingOrientationExtension on SeatingOrientation {
  String get label {
    switch (this) {
      case SeatingOrientation.horizontal:
        return '横並び';
      case SeatingOrientation.vertical:
        return '縦並び';
    }
  }
}
