import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget {
  final String studentName;

  const DashboardHeader({
    super.key,
    required this.studentName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 30),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF2563EB),
            Color(0xFF3B82F6),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [

          Row(
            children: [

              const CircleAvatar(
                radius: 28,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  size: 30,
                  color: Color(0xFF2563EB),
                ),
              ),

              const SizedBox(width: 15),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Text(
                      "Good Morning 👋",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),

                    const SizedBox(height: 4),

                    Text(
                      studentName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),

                    const SizedBox(height: 4),

                    const Text(
                      "Welcome to ClassSpire",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),

                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_none,
                    color: Colors.white,
                  ),
                ),
              ),

            ],
          ),

          const SizedBox(height: 25),

          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.15),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Row(
              children: [

                Icon(
                  Icons.auto_graph,
                  color: Colors.white,
                  size: 35,
                ),

                SizedBox(width: 15),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        "Learning Progress",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        "Keep studying daily to maintain your streak.",
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          )

        ],
      ),
    );
  }
}