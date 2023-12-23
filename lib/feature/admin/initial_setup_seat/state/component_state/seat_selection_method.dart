enum SeatSelectionMethod { free, shuffle }

extension SeatSelectionMethodExtension on SeatSelectionMethod {
  String get label {
    switch (this) {
      case SeatSelectionMethod.free:
        return '自由';
      case SeatSelectionMethod.shuffle:
        return 'シャッフル';
    }
  }
}
