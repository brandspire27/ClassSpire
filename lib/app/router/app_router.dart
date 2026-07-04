import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/login_screen.dart';
import '../../features/dashboard/student_dashboard.dart';
import '../../features/splash/splash_screen.dart';
import '../../features/courses/screens/courses_screen.dart';

import 'app_routes.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.splash,

  routes: [

    GoRoute(
      path: AppRoutes.splash,
      builder: (context, state) => const SplashScreen(),
    ),

    GoRoute(
      path: AppRoutes.login,
      builder: (context, state) => const LoginScreen(),
    ),

    GoRoute(
      path: AppRoutes.dashboard,
      builder: (context, state) => const StudentDashboard(),
    ),

    GoRoute(
      path: AppRoutes.courses,
      builder: (context, state) => const CoursesScreen(),
    ),
  ],
);