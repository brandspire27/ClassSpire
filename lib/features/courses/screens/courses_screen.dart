import 'package:flutter/material.dart';

import '../data/course_dummy_data.dart';
import '../widgets/course_card.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Courses"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: dummyCourses.length,
        itemBuilder: (context, index) {
          final course = dummyCourses[index];

          return CourseCard(
            course: course,
            onTap: () {},
          );
        },
      ),
    );
  }
}