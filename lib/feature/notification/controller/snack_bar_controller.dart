import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/scaffold_message_key.dart';

final snackBarProvider = Provider(
    (ref) => SnackBarController(ref.watch(scaffoldMessageKeyProvider)));

class SnackBarController {
  SnackBarController(this.scaffoldMessengerKey);

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey;

  void showSnackBar(String message) {
    scaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 5),
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
