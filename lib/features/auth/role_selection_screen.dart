import 'login_screen.dart';
import 'package:flutter/material.dart';


class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7FB),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [

                const Icon(
                  Icons.school_rounded,
                  size: 90,
                  color: Color(0xff2563EB),
                ),

                const SizedBox(height: 25),

                const Text(
                  "Welcome to ClassSpire",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "Choose your role",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 45),

                roleCard(
  icon: Icons.school,
  title: "Student",
  subtitle: "Attend classes, AI Tutor, Tests",
  color: Colors.blue,
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const LoginScreen(role: "Student"),
      ),
    );
  },
),

                const SizedBox(height: 18),

               roleCard(
  icon: Icons.person,
  title: "Teacher",
  subtitle: "Manage courses & students",
  color: Colors.green,
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const LoginScreen(role: "Teacher"),
      ),
    );
  },
),

                const SizedBox(height: 18),

                roleCard(
                  icon: Icons.admin_panel_settings,
                  title: "Administrator",
                  subtitle: "Complete institute management",
                  color: Colors.orange,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LoginScreen(role: "Administrator"),
                      ),
                    );
                  },
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget roleCard({
  required IconData icon,
  required String title,
  required String subtitle,
  required Color color,
  required VoidCallback onTap,
}) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(20),
        leading: CircleAvatar(
          radius: 28,
          backgroundColor: color.withOpacity(.15),
          child: Icon(icon, color: color),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(subtitle),
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
       onTap: onTap,
      ),
    );
  }
}