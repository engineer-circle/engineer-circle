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
  horizontal, // 横向き
  vertical // 縦向き
}
