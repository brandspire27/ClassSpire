import 'package:flutter/material.dart';

class TodaysScheduleCard extends StatelessWidget {
  const TodaysScheduleCard({super.key});

  @override
  Widget build(BuildContext context) {
    final classes = [
      {"time": "09:00 AM", "subject": "Physics"},
      {"time": "11:00 AM", "subject": "Mathematics"},
      {"time": "02:00 PM", "subject": "Chemistry"},
    ];

    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Today's Schedule",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            ...classes.map(
              (item) => ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const CircleAvatar(
                  child: Icon(Icons.schedule),
                ),
                title: Text(item["subject"]!),
                subtitle: Text(item["time"]!),
              ),
            ),
          ],
        ),
      ),
    );
  }
}