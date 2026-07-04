import 'package:flutter/material.dart';

class ContinueLearningCard extends StatelessWidget {
  final String course;
  final double progress;

  const ContinueLearningCard({
    super.key,
    required this.course,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Continue Learning",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              course,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            LinearProgressIndicator(
              value: progress,
              borderRadius: BorderRadius.circular(20),
              minHeight: 10,
            ),

            const SizedBox(height: 12),

            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Resume"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}