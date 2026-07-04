import 'package:flutter/material.dart';

import '../data/dashboard_data.dart';
import 'dashboard_tile.dart';

class QuickActionGrid extends StatelessWidget {
  const QuickActionGrid({super.key});

  @override
  Widget build(BuildContext context) {

    return GridView.builder(

      shrinkWrap: true,

      physics: const NeverScrollableScrollPhysics(),

      itemCount: dashboardItems.length,

      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(

        crossAxisCount: 2,

        crossAxisSpacing: 15,

        mainAxisSpacing: 15,

        childAspectRatio: 1.2,
      ),

      itemBuilder: (context, index) {

        final item = dashboardItems[index];

        return DashboardTile(

          title: item.title,

          icon: item.icon,

          color: item.color,

          onTap: item.onTap,
        );
      },
    );
  }
}