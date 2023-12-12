import 'package:engineer_circle/app/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  // 設定の初期化を待たせる
  WidgetsFlutterBinding.ensureInitialized();

  // Firebase初期化
  await Firebase.initializeApp();

  runApp(
    const ProviderScope(
      overrides: [],
      child: App(),
    ),
  );
}
