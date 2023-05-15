import 'package:flutter/material.dart';
import 'package:flutter_breaking/router.dart';

void main() {
  runApp(BreakingBad(AppRouter()));
}

class BreakingBad extends StatelessWidget {
  final AppRouter appRouter;

  const BreakingBad(this.appRouter,
      {super.key}); // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
