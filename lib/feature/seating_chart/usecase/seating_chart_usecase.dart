import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:engineer_circle/domain/seat_group.dart';
import 'package:engineer_circle/domain/user.dart';
import 'package:engineer_circle/feature/seating_chart/state/component_state/seat_group_view_property.dart';
import 'package:engineer_circle/feature/seating_chart/state/component_state/seat_title_view_property.dart';
import 'package:engineer_circle/feature/seating_chart/state/seating_chart_state.dart';
import 'package:engineer_circle/infrastructure/remote/firebase_exceptions.dart';
import 'package:engineer_circle/infrastructure/repository/authentication_repository.dart';
import 'package:engineer_circle/infrastructure/repository/seating_chart_repository.dart';
import 'package:engineer_circle/infrastructure/repository/user_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seatingChartUseCaseProvider = Provider(
  (ref) => SeatingChartUseCase(
    seatingChartRepository: ref.watch(seatingChartRepositoryProvider),
    userRepository: ref.watch(userRepositoryProvider),
    authRepository: ref.watch(authRepositoryProvider),
  ),
);

class SeatingChartUseCase {
  SeatingChartUseCase({
    required this.seatingChartRepository,
    required this.userRepository,
    required this.authRepository,
  });

  final SeatingChartRepository seatingChartRepository;
  final UserRepository userRepository;
  final AuthenticationRepository authRepository;

  Future<SeatingChartStateSuccess> getLatest() async {
    final seatingChart = await seatingChartRepository.getLatest();

    final users = await _getUsers(seatingChart.seatGroupList);
    final seatGroupMatrix =
        _createSeatGroupMatrix(seatingChart.seatGroupList, users);

    return SeatingChartStateSuccess(
      docId: seatingChart.docId,
      seatGroupMatrix: seatGroupMatrix,
      currentSeatTitle: seatingChart.seatTitle,
    );
  }

  Future<SeatingChartStateSuccess> getSeatingChart(String docId) async {
    final seatingChart = await seatingChartRepository.getSeatingChart(docId);

    final users = await _getUsers(seatingChart.seatGroupList);
    final seatGroupMatrix =
        _createSeatGroupMatrix(seatingChart.seatGroupList, users);

    return SeatingChartStateSuccess(
      docId: seatingChart.docId,
      seatGroupMatrix: seatGroupMatrix,
      currentSeatTitle: seatingChart.seatTitle,
    );
  }

  Future<List<SeatTitleViewProperty>> getTitles() async {
    final seatingCharts = await seatingChartRepository.getSeatingCharts();
    return seatingCharts.map((seatingChart) {
      return SeatTitleViewProperty(
        docId: seatingChart.docId,
        title: seatingChart.seatTitle,
      );
    }).toList();
  }

  Future<void> updateSeatUser(
    String seatId,
    String docId,
  ) {
    final userId = authRepository.getCurrentUserUid();
    if (userId == null) throw UserIdNotFoundException();
    return seatingChartRepository.updateSeatUser(seatId, userId, docId);
  }

  /// 着座しているユーザーを取得する
  Future<List<User>> _getUsers(
    List<SeatGroup> seatGroupList,
  ) {
    // ユーザーIDの取得
    final userIds = seatGroupList
        .expand((seatGroup) => seatGroup.seats
            .where((seat) => seat.userId != null)
            .map((seat) => seat.userId!))
        .toList();

    // ユーザーデータの取得
    return userRepository.getWhereInUsers(userIds);
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
