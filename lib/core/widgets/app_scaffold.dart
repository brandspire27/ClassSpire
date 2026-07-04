import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AppScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final List<Widget>? actions;
  final Widget? floatingActionButton;

  const AppScaffold({
    super.key,
    required this.title,
    required this.body,
    this.actions,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        title: Text(title),
        centerTitle: false,
        actions: actions,
      ),

      body: SafeArea(
        child: body,
      ),

      floatingActionButton: floatingActionButton,
    );
  }
}