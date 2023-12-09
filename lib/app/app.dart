import 'package:engineer_circle/app/router/app_router.dart';
import 'package:engineer_circle/feature/loading/state/overlay_loading_state_notifier.dart';
import 'package:engineer_circle/feature/loading/ui/overlay_loading.dart';
import 'package:engineer_circle/feature/notification/state/scaffold_message_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    return MaterialApp.router(
      theme: ThemeData(
        useMaterial3: true,
      ),
      routerConfig: router.config(),
      scaffoldMessengerKey: ref.watch(scaffoldMessageKeyProvider),
      debugShowCheckedModeBanner: false, // デバッグバナーを非表示
      builder: (context, child) {
        final isShowOverlayLoading = ref.watch(overlayLoadingProvider);
        return MediaQuery(
          // 全ての端末における文字サイズ設定を固定化
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          child: Navigator(
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
      },
    );
  }
}
