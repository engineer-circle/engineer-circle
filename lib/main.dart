import 'package:engineer_circle/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      overrides: [],
      child: App(),
    ),
  );
}
