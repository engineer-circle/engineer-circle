import 'package:flutter_riverpod/flutter_riverpod.dart';

final overlayLoadingProvider =
    NotifierProvider<OverlayLoadingStateNotifier, bool>(
        OverlayLoadingStateNotifier.new);

class OverlayLoadingStateNotifier extends Notifier<bool> {
  @override
  bool build() => false;

  /// ローディングを表示する
  void show() => state = true;

  /// ローディングを非表示にする
  void hide() => state = false;
}
