import 'package:flutter/material.dart';

import 'widgets/dashboard_header.dart';
import '../../shared/models/student_model.dart';
import 'widgets/continue_learning_card.dart';
import 'widgets/ai_tutor_card.dart';
import 'widgets/quick_action_grid.dart';
import 'widgets/todays_schedule_card.dart';

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),

      body: Column(
        children: [
          const DashboardHeader(studentName: "Param"),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  ContinueLearningCard(
                    course: demoStudent.currentCourse,
                    progress: demoStudent.progress,
                  ),

                  const SizedBox(height: 20),

                  const AITutorCard(),

                  const SizedBox(height: 25),

                  const Text(
                    "Quick Actions",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  const QuickActionGrid(),

                  const SizedBox(height: 25),

                  const TodaysScheduleCard(),

                  const SizedBox(height: 25),

                  const Text(
                    "Upcoming Class",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.science),
                      ),
                      title: Text("Physics"),
                      subtitle: Text(
                        "10:00 AM - 11:00 AM\nMr. Rahul Sharma",
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    "Announcements",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const ListTile(
                      leading: Icon(
                        Icons.campaign,
                        color: Colors.blue,
                      ),
                      title: Text("Physics Test"),
                      subtitle: Text(
                        "Physics test scheduled on Saturday at 10 AM.",
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
        destinations: const [

          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          NavigationDestination(
            icon: Icon(Icons.menu_book),
            label: "Courses",
          ),

          NavigationDestination(
            icon: Icon(Icons.smart_toy),
            label: "AI",
          ),

          NavigationDestination(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}