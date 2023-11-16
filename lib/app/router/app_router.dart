import 'package:auto_route/auto_route.dart';
import 'package:engineer_circle/feature/admin/create_seating_chart/ui/create_seating_chart_page.dart';
import 'package:engineer_circle/feature/seating_chart/ui/seating_chart_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'app_router.gr.dart';

final appRouterProvider = Provider((ref) {
  return AppRouter(ref);
});

// importのバッティングを防ぐため、generate時に指定の文字列を変換する。 ex.) HomePage -> HomeRoute
@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter implements AutoRouteGuard {
  AppRouter(this.ref);

  final Ref ref;

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/seatingChart',
          page: SeatingChartRoute.page,
        ),
        AutoRoute(
          path: '/createSeating',
          page: CreateSeatingChartRoute.page,
        ),
      ];

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // TODO: implement onNavigation
  }
}
