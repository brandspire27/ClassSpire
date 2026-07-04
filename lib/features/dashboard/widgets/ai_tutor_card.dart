import 'package:flutter/material.dart';

class AITutorCard extends StatelessWidget {
  const AITutorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF2563EB),
            Color(0xFF4F46E5),
          ],
        ),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.smart_toy,
                  color: Color(0xFF2563EB),
                ),
              ),
              SizedBox(width: 12),
              Text(
                "ClassSpire AI",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ],
          ),

          const SizedBox(height: 18),

          const Text(
            "Your personal AI study assistant.",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 20),

          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: const Color(0xFF2563EB),
            ),
            onPressed: () {
              // AI Screen (next milestone)
            },
            icon: const Icon(Icons.chat),
            label: const Text("Ask AI"),
          ),
        ],
      ),
    );
  }
}