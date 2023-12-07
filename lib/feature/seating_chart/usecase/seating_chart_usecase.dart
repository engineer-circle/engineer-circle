import 'package:collection/collection.dart';
import 'package:engineer_circle/domain/seat_group.dart';
import 'package:engineer_circle/domain/user.dart';
import 'package:engineer_circle/feature/seating_chart/state/component_state/seat_group_view_property.dart';
import 'package:engineer_circle/feature/seating_chart/state/seating_chart_state.dart';
import 'package:engineer_circle/infrastructure/repository/seating_chart_repository.dart';
import 'package:engineer_circle/infrastructure/repository/user_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seatingChartUseCaseProvider = Provider(
  (ref) => SeatingChartUseCase(
      seatingChartRepository: ref.watch(seatingChartRepositoryProvider),
      userRepository: ref.watch(userRepositoryProvider)),
);

class SeatingChartUseCase {
  SeatingChartUseCase({
    required this.seatingChartRepository,
    required this.userRepository,
  });

  final SeatingChartRepository seatingChartRepository;
  final UserRepository userRepository;

  Future<SeatingChartStateSuccess> getLatest() async {
    final seatingChart = await seatingChartRepository.getLatest();

    final userIds = seatingChart.seats
        .expand((seatGroup) => seatGroup.seats
                .where((seat) => seat.userId != null) // nullでないuserIdをフィルタリング
                .map((seat) => seat.userId!) // userIdを抽出
            )
        .toList();
    final users = await userRepository.getWhereInUsers(userIds);

    final seatGroupMatrix = seatingChart.seats
        .fold<List<List<SeatGroupViewProperty>>>([],
            (previousValue, seatGroup) {
      final value = _toSeatGroupViewProperty(seatGroup, users);
      if (previousValue.isEmpty ||
          previousValue.last.last.row != seatGroup.row) {
        previousValue.add([value]);
      } else {
        previousValue.last.add(value);
      }
      return previousValue;
    });

    final seatTitles = await seatingChartRepository.getTitles();

    return SeatingChartStateSuccess(
      seatGroupMatrix: seatGroupMatrix,
      seatTitles: seatTitles,
      currentSeatTitle: seatingChart.title,
    );
  }

  SeatGroupViewProperty _toSeatGroupViewProperty(
    SeatGroup seatGroup,
    List<User> users,
  ) {
    return SeatGroupViewProperty(
      groupId: seatGroup.groupId,
      row: seatGroup.row,
      column: seatGroup.column,
      seatOrientation: seatGroup.seatOrientation,
      seats: seatGroup.seats.map(
        (seat) {
          return SeatViewProperty(
            seatId: seat.seatId,
            isSeated: seat.isSeated,
            user:
                users.firstWhereOrNull((element) => element.id == seat.userId),
          );
        },
      ).toList(),
    );
  }
}
