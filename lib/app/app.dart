import 'package:flutter/material.dart';
import '../core/theme/app_theme.dart';
import '../features/splash/splash_screen.dart';

class ClassSpireApp extends StatelessWidget {
  const ClassSpireApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ClassSpire',
      theme: AppTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}
