import 'package:flutter/material.dart';

class DashboardTile extends StatelessWidget {

  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const DashboardTile({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    return InkWell(

      borderRadius: BorderRadius.circular(20),

      onTap: onTap,

      child: Container(

        decoration: BoxDecoration(

          color: Colors.white,

          borderRadius: BorderRadius.circular(20),

          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
            )
          ],
        ),

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            CircleAvatar(
              radius: 25,
              backgroundColor: color.withOpacity(.15),
              child: Icon(
                icon,
                color: color,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),

          ],
        ),
      ),
    );
  }
}