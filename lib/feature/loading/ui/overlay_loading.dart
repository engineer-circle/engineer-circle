import 'package:flutter/material.dart';

class OverlayLoading extends StatelessWidget {
  const OverlayLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {}, // Loading中はタップ不可にする
      child: Container(
        color: Colors.transparent,
        width: double.infinity, // 画面全体を覆う
        height: double.infinity, // 画面全体を覆う
        child: Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.8),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Padding(
              padding: EdgeInsets.all(32),
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
