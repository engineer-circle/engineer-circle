import 'package:auto_route/auto_route.dart';
import 'package:engineer_circle/app/router/app_router.dart';
import 'package:engineer_circle/feature/admin/initial_setup_seat/state/component_state/seat_selection_method.dart';
import 'package:engineer_circle/feature/admin/initial_setup_seat/state/initial_setup_seat_state.dart';
import 'package:engineer_circle/feature/admin/initial_setup_seat/state/initial_setup_seat_state_notifier.dart';
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
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(initialSetupSeatStateProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('シート作成'),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  '席の決め方',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 4),
                DropdownButtonFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  items: SeatSelectionMethod.values
                      .map((SeatSelectionMethod value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value.label),
                    );
                  }).toList(),
                  onChanged: (SeatSelectionMethod? newValue) => ref
                      .read(initialSetupSeatStateProvider.notifier)
                      .updateSeatSelectionMethod(newValue),
                  value: state.seatSelectionMethod,
                  validator: (value) => value == null ? '席の決め方を選択してください' : null,
                ),
                const SizedBox(height: 16),
                const Text(
                  'シート名',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 4),
                TextFormField(
                  initialValue: state.seatName,
                  maxLines: 1,
                  maxLength: 20,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) => value!.isEmpty ? 'シート名を入力してください' : null,
                  onChanged: (value) => ref
                      .read(initialSetupSeatStateProvider.notifier)
                      .updateSeatName(value),
                ),
                const SizedBox(height: 24),
                FilledButton(
                  child: const Text(
                    '作成する',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      context.router.push(
                        CreateSeatingChartRoute(
                          seatTitle: state.seatName!,
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
