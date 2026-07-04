import '../auth/role_selection_screen.dart';
import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

   Timer(const Duration(seconds: 3), () {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (_) => const RoleSelectionScreen(),
    ),
  );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1B3D),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Icon(
                Icons.school_rounded,
                size: 70,
                color: Color(0xFF2563EB),
              ),
            ),

            const SizedBox(height: 35),

            const Text(
              "ClassSpire",
              style: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Learn • Manage • Grow",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 60),

            const CircularProgressIndicator(
              color: Colors.white,
            ),

          ],
        ),
      ),
    );
  }
}