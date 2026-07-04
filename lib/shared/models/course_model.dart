class CourseModel {
  final String id;
  final String title;
  final String instructor;
  final String thumbnail;
  final double progress;
  final int totalLessons;
  final int completedLessons;
  final int totalChapters;

  const CourseModel({
    required this.id,
    required this.title,
    required this.instructor,
    required this.thumbnail,
    required this.progress,
    required this.totalLessons,
    required this.completedLessons,
    required this.totalChapters,
  });
}

enum ColorTag {
  blue,
  green,
  orange,
  purple,
  red,
}