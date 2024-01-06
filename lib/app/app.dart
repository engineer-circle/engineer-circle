import 'package:engineer_circle/app/router/app_router.dart';
import 'package:engineer_circle/feature/authentication/controller/authentication_controller.dart';
import 'package:engineer_circle/feature/authentication/state/authentication_state.dart';
import 'package:engineer_circle/feature/authentication/state/authentication_state_notifier.dart';
import 'package:engineer_circle/feature/loading/state/overlay_loading_state_notifier.dart';
import 'package:engineer_circle/feature/loading/ui/overlay_loading.dart';
import 'package:engineer_circle/feature/notification/state/scaffold_message_key.dart';
import 'package:engineer_circle/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // 認証状態を更新
      ref.read(authProvider).update();
    });
  }

  @override
  Widget build(BuildContext context) {
    final router = ref.watch(appRouterProvider);
    return MaterialApp.router(
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: FontFamily.notoSansJP,
      ),
      routerConfig: router.config(),
      scaffoldMessengerKey: ref.watch(scaffoldMessageKeyProvider),
      debugShowCheckedModeBanner: false, // デバッグバナーを非表示
      builder: (context, child) {
        switch (ref.watch(authStateProvider)) {
          case AuthenticationChecking _:
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          default:
            final isShowOverlayLoading = ref.watch(overlayLoadingProvider);
            return MediaQuery(
              // 全ての端末における文字サイズ設定を固定化
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
              child: Navigator(
                // routerを使用してルート遷移を管理しているため、Navigatorでの画面遷移を無効にする
                onPopPage: (route, dynamic _) => false,
                pages: [
                  MaterialPage(
                    child: Stack(
                      children: [
                        child!,
                        // ローディング状態を見てローディングを表示する
                        if (isShowOverlayLoading) const OverlayLoading(),
                      ],
                    ),
                  )
                ],
              ),
            );
        }
      },
    );
  }
}
