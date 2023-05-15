import 'package:flutter/material.dart';

void main() {
  runApp(const BreakingBad());
}

class BreakingBad extends StatelessWidget {
  const BreakingBad({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}

