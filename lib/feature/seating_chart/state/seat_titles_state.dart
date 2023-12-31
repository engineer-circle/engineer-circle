import 'package:engineer_circle/feature/seating_chart/state/component_state/seat_title_view_property.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat_titles_state.freezed.dart';

sealed class SeatTitlesState {}

class SeatTitlesStateLoading extends SeatTitlesState {}

class SeatTitlesStateFailure extends SeatTitlesState {}

@freezed
class SeatTitlesStateSuccess extends SeatTitlesState
    with _$SeatTitlesStateSuccess {
  const factory SeatTitlesStateSuccess({
    required List<SeatTitleViewProperty> titles,
  }) = _SeatTitlesStateSuccess;
}
