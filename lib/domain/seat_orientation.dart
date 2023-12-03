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
