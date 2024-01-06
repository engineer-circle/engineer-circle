import 'package:auto_route/auto_route.dart';
import 'package:engineer_circle/app/router/app_router.dart';
import 'package:engineer_circle/feature/authentication/controller/authentication_controller.dart';
import 'package:engineer_circle/feature/authentication/state/authentication_state.dart';
import 'package:engineer_circle/feature/authentication/state/authentication_state_notifier.dart';
import 'package:engineer_circle/feature/drawer/drawer_item.dart';
import 'package:engineer_circle/feature/notification/simple_alert_dialog.dart';
import 'package:engineer_circle/global/config/urls.dart';
import 'package:engineer_circle/global/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppDrawer extends ConsumerStatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyDrawerState();
}

class _MyDrawerState extends ConsumerState<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authStateProvider);
    final itemsToShow = getItemsToShow(authState.isAdmin);

    return Drawer(
      child: ListView(
        children: [
          const SizedBox(
            height: 80,
            child: DrawerHeader(
              child: Text('メニュー'),
            ),
          ),
          ...itemsToShow.map(
            (item) => ListTile(
              leading: Icon(item.icon),
              title: Text(item.title),
              onTap: () {
                item.onTap(context, ref);
              },
            ),
          )
        ],
      ),
    );
  }
}

List<DrawerItem> getItemsToShow(bool isAdmin) {
  return isAdmin
      ? drawerItems
      // 非管理者の場合は管理者画面を除外
      : drawerItems.where((item) => item.title != managerScreenName).toList();
}

final List<DrawerItem> drawerItems = [
  DrawerItem(
    title: 'プライバシーポリシー',
    icon: Icons.privacy_tip,
    onTap: (context, ref) async {
      await ref.read(urlLauncherProvider).launch(privacyPolicyUrl);
    },
  ),
  DrawerItem(
    title: 'サービス利用規約',
    icon: Icons.rule,
    onTap: (context, ref) async {
      await ref.read(urlLauncherProvider).launch(termOfServiceUrl);
    },
  ),
  DrawerItem(
    title: 'ログアウト',
    icon: Icons.logout,
    onTap: (context, ref) {
      showDialog(
        context: context,
        builder: (dialogContext) {
          return SimpleAlertDialog(
            message: 'ログアウトしてもよろしいですか？',
            onConfirm: () async {
              Navigator.of(dialogContext).pop();
              await ref.read(authProvider).logout();
            },
            onCancel: () => Navigator.of(dialogContext).pop(),
          );
        },
      );
    },
  ),
  DrawerItem(
      title: managerScreenName,
      icon: Icons.admin_panel_settings,
      onTap: (context, ref) {
        Navigator.pop(context);
        context.router.push(
          const AdminRootRoute(),
        );
      }),
];

const String managerScreenName = '管理者画面';
