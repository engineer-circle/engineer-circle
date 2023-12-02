import 'dart:math';

import 'package:engineer_circle/feature/admin/create_seating_chart/state/component_state/create_seat.dart';
import 'package:engineer_circle/feature/profile/state/component_state/career_option.dart';
import 'package:engineer_circle/feature/profile/state/component_state/user.dart';
import 'package:engineer_circle/feature/seating_chart/state/component_state/seat_group.dart';
import 'package:engineer_circle/feature/seating_chart/state/seating_chart_state.dart';
import 'package:engineer_circle/feature/seating_chart/state/seating_chart_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seatingChartProvider = Provider(
  (ref) => SeatingChartController(ref: ref),
);

class SeatingChartController {
  SeatingChartController({
    required Ref ref,
  }) : _ref = ref;

  final Ref _ref;

  Future<void> init() async {
    // TODO: Remoteから取得する
    final seatingChart = SeatingChartStateSuccess(
      seatGroupMatrix: List.generate(
        4,
        (rowIndex) {
          final row = rowIndex + 1;
          return List.generate(3, (columnIndex) {
            final column = columnIndex + 1;
            return SeatGroup(
              groupId: '$row-$column',
              row: row,
              column: column,
              seatOrientation: row % 2 == 1
                  ? SeatOrientation.horizontal
                  : SeatOrientation.vertical,
              seats: List.generate(6, (seatIndex) {
                final isSeated = Random().nextBool();
                return Seat(
                  seatId: '$row-$column-$seatIndex',
                  isSeated: isSeated,
                  user: isSeated
                      ? User(
                          name: column % 2 == 1 ? 'kuwa' : null,
                          skills: ['Android', 'Flutter'],
                          career: CareerOption.jobHuntingOrConsideringChange,
                          selfIntroduction: 'エンジニア4年目です。\nよろしくお願いします！',
                          avatarUrl: column % 2 == 1
                              ? "https://lh3.googleusercontent.com/a/ACg8ocLEtQvFJ-FBYsPcdzNrSebBlKXfdySdQdEKmIBbcNwyAWU=s288-c-no"
                              : null,
                          twitterLink: 'https://twitter.com/kilalabu',
                          musubiteLink: 'https://musubite-job.com',
                        )
                      : null,
                );
              }),
            );
          });
        },
      ),
      seatTitles: ['23/10/21(初回)', '23/9/21(2回目)', '23/9/21(初回)'],
      currentSeatTitle: '23/10/21(初回)',
    );

    _ref
        .read(seatingChartStateProvider.notifier)
        .initSeatingChart(seatingChart);
  }
}
