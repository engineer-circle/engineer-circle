import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// SnackBar表示用のGlobalKey
final scaffoldMessageKeyProvider =
    Provider((ref) => GlobalKey<ScaffoldMessengerState>());
