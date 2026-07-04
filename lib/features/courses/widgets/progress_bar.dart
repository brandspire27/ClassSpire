import 'package:flutter/material.dart';

class CourseProgressBar extends StatelessWidget {
  final double progress;

  const CourseProgressBar({
    super.key,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: LinearProgressIndicator(
        value: progress,
        minHeight: 8,
      ),
    );
  }
}