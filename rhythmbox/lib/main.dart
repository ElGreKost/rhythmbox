import 'package:flutter/material.dart';
import 'package:rhythmbox/theme.dart';
import 'package:rhythmbox/app_router.dart';

void main() {
  runApp(const RhythmBoxApp());
}

class RhythmBoxApp extends StatelessWidget {
  const RhythmBoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'RhythmBox',
      theme: appTheme,
      routerConfig: AppRouter.router,
    );
  }
}
