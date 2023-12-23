import 'package:flutter/material.dart';

class SimpleAlertDialog extends StatelessWidget {
  const SimpleAlertDialog({
    Key? key,
    required this.message,
    required this.onConfirm,
    required this.onCancel,
    this.confirmButtonText = 'OK',
    this.cancelButtonText = 'キャンセル',
  }) : super(key: key);

  final String message;
  final VoidCallback onConfirm;
  final VoidCallback onCancel;
  final String confirmButtonText;
  final String cancelButtonText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text(
        message,
        style: const TextStyle(fontSize: 16),
      ),
      actions: [
        TextButton(
          onPressed: onCancel,
          child: Text(cancelButtonText),
        ),
        TextButton(
          onPressed: onConfirm,
          child: Text(confirmButtonText),
        ),
      ],
    );
  }
}
