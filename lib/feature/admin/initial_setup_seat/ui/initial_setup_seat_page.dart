import 'package:auto_route/auto_route.dart';
import 'package:engineer_circle/app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class InitialSetupSeatPage extends ConsumerStatefulWidget {
  const InitialSetupSeatPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _InitialSetupSeatPageState();
}

class _InitialSetupSeatPageState extends ConsumerState<InitialSetupSeatPage> {
  String? _selectedPreviousSetting;
  final TextEditingController _seatNameController = TextEditingController();
  String? _selectedSeatMethod;

  @override
  void dispose() {
    _seatNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Remoteから設定候補を取得する
    final List<String> previousSettings = [
      '23/10/21(初回)',
      '23/9/21(2回目)',
      '23/9/21(初回)'
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('シート作成'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              '席の決め方',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 4),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              items:
                  ['自由', 'シャッフル'].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _selectedSeatMethod = newValue!;
                });
              },
              value: _selectedSeatMethod,
            ),
            const SizedBox(height: 16),
            const Text(
              '過去シートの選択',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 4),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              items: previousSettings
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _selectedPreviousSetting = newValue;
                });
              },
              value: _selectedPreviousSetting,
            ),
            const SizedBox(height: 16),
            const Text(
              'シート名',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 4),
            TextField(
              controller: _seatNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              maxLength: 20,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              child: const Text('作成する'),
              onPressed: () {
                context.router.push(
                  const CreateSeatingChartRoute(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
