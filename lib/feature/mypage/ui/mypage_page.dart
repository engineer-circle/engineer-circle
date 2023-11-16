import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class MypagePage extends ConsumerStatefulWidget {
  const MypagePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MypageState();
}

class _MypageState extends ConsumerState<MypagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Page'),
      ),
      body: Center(),
    );
  }
}
