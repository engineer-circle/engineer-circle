import 'package:auto_route/auto_route.dart';
import 'package:engineer_circle/app/router/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeTabRouterRoute(),
        MypageTabRouterRoute(),
      ],
      builder: (context, child) {
        // タブが切り替わると発火
        final tabsRouter = context.tabsRouter;
        return Scaffold(
          body: child,
          bottomNavigationBar: NavigationBar(
            selectedIndex: tabsRouter.activeIndex,
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home),
                label: 'ホーム',
              ),
              NavigationDestination(
                icon: Icon(Icons.account_circle),
                label: 'マイページ',
              ),
            ],
            onDestinationSelected: tabsRouter.setActiveIndex,
          ),
        );
      },
    );
  }
}

@RoutePage()
class HomeTabRouterPage extends AutoRouter {
  const HomeTabRouterPage({super.key});
}

@RoutePage()
class MypageTabRouterPage extends AutoRouter {
  const MypageTabRouterPage({super.key});
}
