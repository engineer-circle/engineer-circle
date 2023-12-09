import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat_title_view_property.freezed.dart';

@freezed
class SeatTitleViewProperty with _$SeatTitleViewProperty {
  const factory SeatTitleViewProperty({
    required DocumentReference docRef,
    required String title,
  }) = _SeatTitleViewProperty;
}
