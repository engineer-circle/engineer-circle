import 'package:auto_route/auto_route.dart';
import 'package:engineer_circle/app/router/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AdminRootPage extends AutoRouter {
  const AdminRootPage({super.key});
}

@RoutePage()
class AdminMenuPage extends StatelessWidget {
  const AdminMenuPage({
    super.key,
  });

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
                // TODO
              },
            ),
            const Divider(color: Colors.black),
          ],
        ),
      ),
    );
  }
}
