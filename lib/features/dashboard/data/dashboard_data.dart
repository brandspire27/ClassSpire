import 'package:flutter/material.dart';
import '../models/dashboard_item.dart';

List<DashboardItem> dashboardItems = [

  DashboardItem(
    title: "Courses",
    icon: Icons.menu_book,
    color: Colors.blue,
    onTap: () {},
  ),

  DashboardItem(
    title: "Classes",
    icon: Icons.calendar_month,
    color: Colors.orange,
    onTap: () {},
  ),

  DashboardItem(
    title: "AI Tutor",
    icon: Icons.smart_toy,
    color: Colors.green,
    onTap: () {},
  ),

  DashboardItem(
    title: "Attendance",
    icon: Icons.fact_check,
    color: Colors.purple,
    onTap: () {},
  ),

  DashboardItem(
    title: "Homework",
    icon: Icons.assignment,
    color: Colors.red,
    onTap: () {},
  ),

  DashboardItem(
    title: "Results",
    icon: Icons.bar_chart,
    color: Colors.teal,
    onTap: () {},
  ),
];