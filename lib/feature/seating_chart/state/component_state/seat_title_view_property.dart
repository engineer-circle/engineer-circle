import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat_title_view_property.freezed.dart';

@freezed
class SeatTitleViewProperty with _$SeatTitleViewProperty {
  const factory SeatTitleViewProperty({
    required String docId,
    required String title,
  }) = _SeatTitleViewProperty;
}
