class StudentModel {
  final String name;
  final String institute;
  final int attendance;
  final int streak;
  final String currentCourse;
  final double progress;

  const StudentModel({
    required this.name,
    required this.institute,
    required this.attendance,
    required this.streak,
    required this.currentCourse,
    required this.progress,
  });
}

const demoStudent = StudentModel(
  name: "Param",
  institute: "ClassSpire Demo Institute",
  attendance: 95,
  streak: 7,
  currentCourse: "Physics",
  progress: 0.80,
);