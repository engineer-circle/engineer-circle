import 'package:engineer_circle/feature/seating_chart/ui/seating_chart_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: SeatingChartPage(),
        ),
      ),
    );
  }
}
