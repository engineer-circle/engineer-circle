import 'package:auto_route/auto_route.dart';
import 'package:engineer_circle/app/router/app_router.dart';
import 'package:engineer_circle/feature/admin/menu/controller/admin_menu.controller.dart';
import 'package:engineer_circle/feature/authentication/controller/authentication_controller.dart';
import 'package:engineer_circle/feature/drawer/drawer_item.dart';
import 'package:engineer_circle/feature/notification/simple_alert_dialog.dart';
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
    return Drawer(
      child: ListView(
        children: [
          const SizedBox(
            height: 80,
            child: DrawerHeader(
              child: Text('メニュー'),
            ),
          ),
          for (final item in drawerItems)
            ListTile(
              leading: Icon(item.icon),
              title: Text(item.title),
              onTap: () {
                item.onTap(context, ref);
              },
            ),
        ],
      ),
    );
  }
}

final List<DrawerItem> drawerItems = [
  DrawerItem(
    title: 'プライバシーポリシー',
    icon: Icons.privacy_tip,
    onTap: (context, ref) async {
      // TODO
    },
  ),
  DrawerItem(
    title: 'サービス利用規約',
    icon: Icons.rule,
    onTap: (context, ref) async {
      // TODO
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
      title: '管理者画面',
      icon: Icons.admin_panel_settings,
      onTap: (context, ref) {
        Navigator.pop(context);
        context.router.push(
          const AdminRootRoute(),
        );
      }),
];
