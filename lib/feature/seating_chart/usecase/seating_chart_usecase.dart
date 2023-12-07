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

    // ユーザーIDの取得
    final userIds = seatingChart.seats
        .expand((seatGroup) => seatGroup.seats
            .where((seat) => seat.userId != null)
            .map((seat) => seat.userId!))
        .toList();

    // ユーザーデータの取得
    final users = await userRepository.getWhereInUsers(userIds);

    // 与えられた座席データを行列形式に変換する
    final seatGroupMatrix = _createSeatGroupMatrix(seatingChart.seats, users);

    // シートタイトルの取得
    final seatTitles = await seatingChartRepository.getTitles();

    return SeatingChartStateSuccess(
      seatGroupMatrix: seatGroupMatrix,
      seatTitles: seatTitles,
      currentSeatTitle: seatingChart.title,
    );
  }

  /// 座席グループを行ごとに分割し、行列を作成する
  List<List<SeatGroupViewProperty>> _createSeatGroupMatrix(
    List<SeatGroup> seatGroups,
    List<User> users,
  ) {
    return seatGroups.fold<List<List<SeatGroupViewProperty>>>([], (
      matrix,
      seatGroup,
    ) {
      // View表示用のクラスに変換
      final seatGroupViewProperty = _toSeatGroupViewProperty(seatGroup, users);

      // 前回の行の最終要素と現在の座席グループが同じ行にあるかどうかをチェック
      if (matrix.isEmpty || matrix.last.last.row != seatGroup.row) {
        // 現在の座席グループが新しい行にある場合、新しい行を追加
        matrix.add([seatGroupViewProperty]);
      } else {
        // 現在の座席グループが前回の行にある場合、既存の行に追加
        matrix.last.add(seatGroupViewProperty);
      }

      return matrix;
    });
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
