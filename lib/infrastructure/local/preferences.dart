import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final preferencesProvider =
    Provider<Preferences>((_) => throw UnimplementedError());

class Preferences {
  Preferences({required this.pref});

  SharedPreferences pref;

  static const keyAuthMethod = 'authMethod';

  // 認証方法を保存する
  Future<void> setAuthMethod(String method) async {
    await pref.setString(keyAuthMethod, method);
  }

  // 認証方法を取得する
  String? getAuthMethod() {
    return pref.getString(keyAuthMethod);
  }

  // 認証方法をリセットする
  Future<void> resetAuthMethod() async {
    await pref.remove(keyAuthMethod);
  }
}
