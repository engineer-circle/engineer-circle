import 'package:auto_route/auto_route.dart';
import 'package:engineer_circle/app/router/app_router.dart';
import 'package:engineer_circle/feature/admin/menu/controller/admin_menu.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class AdminRootPage extends AutoRouter {
  const AdminRootPage({super.key});
}

@RoutePage()
class AdminMenuPage extends ConsumerStatefulWidget {
  const AdminMenuPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AdminMenuPageState();
}

class _AdminMenuPageState extends ConsumerState<AdminMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('管理者画面')),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: ListView(
          children: <Widget>[
            const Text(
              'シート管理',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const Divider(color: Colors.black),
            ListTile(
              title: const Text('シートを作成する'),
              onTap: () => context.router.push(
                const InitialSetupSeatRoute(),
              ),
            ),
            const Divider(color: Colors.black),
            ListTile(
              title: const Text('シートを削除する'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (dialogContext) {
                    return AlertDialog(
                      content: const Text(
                        '最新のシートを削除しますか',
                        style: TextStyle(fontSize: 16),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(dialogContext).pop(),
                          child: const Text('いいえ'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(dialogContext).pop();
                            ref
                                .read(adminMenuProvider)
                                .deleteRecentSeatingChart();
                          },
                          child: const Text('はい'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            const Divider(color: Colors.black),
          ],
        ),
      ),
    );
  }
}
