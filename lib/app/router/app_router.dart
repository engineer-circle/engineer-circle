import 'package:auto_route/auto_route.dart';
import 'package:engineer_circle/feature/admin/initial_setup_seat/ui/initial_setup_seat_page.dart';
import 'package:engineer_circle/feature/admin/create_seating_chart/ui/create_seating_chart_page.dart';
import 'package:engineer_circle/feature/admin/menu/ui/admin_menu.page.dart';
import 'package:engineer_circle/domain/user.dart';
import 'package:engineer_circle/feature/authentication/state/authentication_state.dart';
import 'package:engineer_circle/feature/authentication/state/authentication_state_notifier.dart';
import 'package:engineer_circle/feature/authentication/ui/authentication_root_page.dart';
import 'package:engineer_circle/feature/authentication/ui/login_page.dart';
import 'package:engineer_circle/feature/authentication/ui/sign_up_page.dart';
import 'package:engineer_circle/feature/profile/ui/profile_form_page.dart';
import 'package:engineer_circle/feature/profile/ui/profile_page.dart';
import 'package:engineer_circle/feature/root/ui/root_page.dart';
import 'package:engineer_circle/feature/seating_chart/ui/seating_chart_page.dart';
import 'package:engineer_circle/global/logger.dart';
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
          path: '/auth',
          page: AuthenticationRootRoute.page,
          children: [
            AutoRoute(
              initial: true,
              path: 'login',
              page: LoginRoute.page,
            ),
            AutoRoute(
              path: 'signUp',
              page: SignUpRoute.page,
            ),
          ],
        ),
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
              path: 'initialSetupSeat',
              page: InitialSetupSeatRoute.page,
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
    final routeName = resolver.route.name;
    logger.i('onNavigation(): $routeName');

    switch (ref.watch(authStateProvider)) {
      case AuthenticationState.unAuthenticated:
        if (_isUnauthenticatedRoute(routeName)) {
          // 未ログインなのでrouteNameをそのまま表示
          resolver.next();
          return;
        }
        logger.i('未ログインなので認証画面にリダイレクト');
        router.replace(const AuthenticationRootRoute());

      case AuthenticationState.authenticated:
        if (_isUnauthenticatedRoute(routeName)) {
          logger.i('認証済みなのでホーム画面にリダイレクト');
          router.replace(const RootRoute());
          return;
        }
        // 認証済みなのでrouteNameをそのまま表示
        resolver.next();

      case AuthenticationState.checking:
      // App()で状態を取得するまで待っているので、ここに流れることはない
    }
  }

  bool _isUnauthenticatedRoute(String routeName) {
    return [
      AuthenticationRootRoute.name,
      LoginRoute.name,
      SignUpRoute.name,
    ].contains(routeName);
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
