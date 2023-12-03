import 'package:auto_route/auto_route.dart';
import 'package:engineer_circle/feature/admin/create_seat/ui/create_seat_page.dart';
import 'package:engineer_circle/feature/admin/create_seating_chart/ui/create_seating_chart_page.dart';
import 'package:engineer_circle/feature/admin/menu/ui/admin_menu.page.dart';
import 'package:engineer_circle/feature/profile/state/component_state/user.dart';
import 'package:engineer_circle/feature/profile/ui/profile_form_page.dart';
import 'package:engineer_circle/feature/profile/ui/profile_page.dart';
import 'package:engineer_circle/feature/root/ui/root_page.dart';
import 'package:engineer_circle/feature/seating_chart/ui/seating_chart_page.dart';
import 'package:flutter/material.dart';
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
          path: '/',
          page: RootRoute.page,
          children: [
            // ホームタブ
            AutoRoute(
              path: 'home',
              page: HomeTabRouterRoute.page,
              children: homeTabRoutes,
            ),
            // プロフィールタブ
            AutoRoute(
              path: 'profile',
              page: ProfileTabRouterRoute.page,
              children: profileTabRoutes,
            ),
          ],
        ),
        // Admin
        AutoRoute(
          path: '/admin',
          page: AdminRootRoute.page,
          children: [
            AutoRoute(
              initial: true,
              page: AdminMenuRoute.page,
            ),
            AutoRoute(
              path: 'createSeat',
              page: CreateSeatRoute.page,
            ),
            AutoRoute(
              path: 'createSeatingChart',
              page: CreateSeatingChartRoute.page,
            ),
          ],
        ),
      ];

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    resolver.next();
  }

  List<AutoRoute> get homeTabRoutes => [
        AutoRoute(
          initial: true,
          page: SeatingChartRoute.page,
        ),
      ];

  List<AutoRoute> get profileTabRoutes => [
        AutoRoute(
          initial: true,
          page: ProfileRoute.page,
        ),
        AutoRoute(
          path: 'profileForm',
          page: ProfileFormRoute.page,
        ),
      ];
}
