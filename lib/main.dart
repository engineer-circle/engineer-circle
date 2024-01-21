import 'package:engineer_circle/app/app.dart';
import 'package:engineer_circle/infrastructure/local/preferences.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  // 設定の初期化を待たせる
  WidgetsFlutterBinding.ensureInitialized();

  // Firebase初期化
  await Firebase.initializeApp();

  runApp(
    ProviderScope(
      overrides: [
        preferencesProvider.overrideWithValue(
          Preferences(
            pref: await SharedPreferences.getInstance(),
          ),
        )
      ],
      child: const App(),
    ),
  );
}
