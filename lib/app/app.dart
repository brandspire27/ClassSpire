import 'package:flutter/material.dart';

import '../core/theme/app_theme.dart';
import 'router/app_router.dart';

class ClassSpireApp extends StatelessWidget {
  const ClassSpireApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'ClassSpire',

      theme: AppTheme.lightTheme,

      routerConfig: appRouter,
    );
  }
}