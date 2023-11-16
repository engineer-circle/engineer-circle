import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DrawerItem {
  final String title;
  final IconData icon;
  final void Function(BuildContext context, WidgetRef ref) onTap;

  const DrawerItem({
    required this.title,
    required this.icon,
    required this.onTap,
  });
}
